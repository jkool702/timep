ff() { echo "${*}"; }
gg() { echo "$*"; ff "$@"; }

: | cat <&0 | cat | tee

{ echo ; } &
{ ( echo A & ); echo B; } &

echo 0
{ echo 1; }
( echo 2 )
echo 3 &
{ echo 4 & }
{ echo 5; } &
( echo 6 & )
( echo 7 ) &
( echo 8 )
( echo 9 & ) &
{ echo 9.1; echo 9.2 & } &
{ echo 9.1a & echo 9.2a; } &
( echo 9.1b; echo 9.2b & ) &
( echo 9.1c & echo 9.2c; ) &
{ echo 9.999; ( echo 9.3 & echo 9.4 ); echo 9.5; } &
{ echo 10 & } &

echo 11
echo 12 &
( echo 13 ) &
( echo 14 )

ff 15
gg 16

( echo a & ) &
{ ( echo b ) & } &

( ( ( echo A5 & ); { echo A4; } & echo A3; ) & echo A2 & echo A1 )


cat <<EOF | grep foo | sed 's/o/O/g' | wc -l
foo
bar
baz
EOF

echo "today is $(date +%Y-%m-%d)"
x=$( (echo nested; echo subshell) | grep sub )

diff <(ls /) <(ls /tmp)
grep pattern <(sed 's/^/>>/' > /dev/null)

coproc CO { for i in {1..3}; do echo "$i"; sleep .01; done; }
while read -r n <&${CO[0]}; do printf "got %s\n" "$n"; done

let "x = 5 + 6"
arr=( one two three ); echo ${arr[@]}
for ((i=0;i<3;i++)); do echo "$i"; done

hh() {
  trap 'echo in-ff-EXIT' EXIT
  echo before
  (
    trap 'echo in-sub-EXIT' EXIT
    echo in subshell
  )
  echo after
}


cmd="echo inside-eval"
eval "$cmd"
eval "eval \"$cmd\""

trap 'echo got USR1; sleep .01' USR1
kill -USR1 $BASHPID
echo after-signal

for i in {1..3}; do
  while read x; do
    if (( x % 2 == 0 )); then
      echo even "$x"
    else
      ( echo odd "$x" )
    fi
  done < <(seq 1 4; :)
done

(
    trap 'echo bye' EXIT
    exit
)

(
    trap 'echo bye' RETURN EXIT
    gg 1
    exit
)

(
    trap 'echo exit' EXIT
    trap 'echo return' RETURN
    gg 1
    exit
)


(
    trap '' RETURN EXIT
    exit
)


(
    trap - EXIT
    exit
)

( ( ( ( echo $BASHPID; ); echo $BASHPID; ); echo $BASHPID; ); echo $BASHPID; ); 
