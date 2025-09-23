#!/bin/bash

# Very deep recursion with indirect calls, async waits, dynamic eval, subshell confusion

shopt -s extglob

declare -A memo_map=()
declare -a async_jobs=()

# Tricky indirect recursion with eval, dynamic function names & substitution
recurse() {
  local n=$1
  local id=$2
  if (( n <= 0 )); then
    echo "$id done"
    return
  fi

  # Dynamic function calling creating a nested call stack
  local fn="recurse_$((n%3))"
  eval "$fn() { recurse $((n-1)) \"$id.$1\" & }; $fn $n"
 
  # Launch an async job, save pid, and keep on recursing
  recurse $((n-1)) "$id.a" &
  async_jobs+=($!)
  
  wait "${async_jobs[-1]}"

  { 
    # Complex command substitution with pipeline and subshells
    local text=$(
      echo "$id-$n" | 
      (grep -o '[0-9]' | tac | grep -Eo '^[0-9]*' | (read x; echo "X$x"))
    )
    eval "echo Processed-$text"
  }

  wait
}

recurse_0() {
  recurse $1 $2
}
recurse_1() {
  recurse $1 $2
}
recurse_2() {
  recurse $1 $2
}

# Loop with traps, subshells, and process substitution
stress_loop() {
  trap 'echo "Signal caught"' SIGINT
  for i in {1..3}; do
    {
      # Start subshell with complex array manipulation and here-doc
      local arr=( $(seq 1 500) )
      local sum=0
      for v in "${arr[@]}"; do
        (( sum+=v ))
      done

      # Async job with process substitution and redirection
      cat <(echo "$sum") > /dev/null & 
      async_jobs+=($!)

      # Nested here-doc inside eval
      eval "$(cat <<EOF
echo "Loop-$i Sum: $sum"
EOF
)"
    } &
    async_jobs+=($!)
  done

  # Wait all async jobs launched by the loop
  for pid in "${async_jobs[@]}"; do
    wait "$pid"
  done
}

main() {
  # Launch stress functions
  recurse 5 root
  stress_loop
}

main

wait
echo "Profiling stress test completed"
