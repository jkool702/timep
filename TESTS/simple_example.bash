testfunc() { 
f() { echo "f: $*"; }
g() ( echo "g: $*"; )
h() { 
	echo "h: $*"; 
	f "$@"; 
	g "$@";
}

echo 0
{ echo 1; }
( echo 2 )
echo 3 &
{ echo 4; } &

echo 5 | cat | tee

for (( kk=6; kk<10; kk++ )); do
	echo $kk
	h $kk
	for jj in {1..3}; do
		f $kk $jj
		g $kk $jj
	done
done
}


timep testfunc


:<<'EOF'

OUTPUT LOG (COMBINED)

1.0:    (0.023018s|100.00%)     (1x) << (FUNCTION): testfunc "${@}" >>
|-- 1.0:        (0.000064s|00.27%)      (1x) testfunc "${@}"
|
|   8.0:        (0.000065s|00.28%)      (1x) echo 0
|
|   9.0:        (0.000665s|02.88%)      (1x) echo 1
|
|   10.0:       (0.000124s|00.53%)      (1x) << (SUBSHELL) >>
|   |-- 10.0:           (0.000124s|00.53%|100.00%)      (1x) echo 2
|
|   11.0:       (0.000450s|01.95%)      (1x) echo 3 (&)
|
|   12.0:       (0.001524s|06.62%)      (1x) << (BACKGROUND FORK) >>
|   |-- 12.0:   (0.000148s|00.64%|100.00%)      (1x) echo 4
|
|   13.0:       (0.004917s|21.36%)      (1x) echo 5 | cat | tee
|
|   15.0:       (0.000304s|01.32%)      (5x) ((kk=6))
|
|   15.1:       (0.000310s|01.34%)      (5x) ((kk<10))
|
|   16.0:       (0.000256s|01.11%)      (4x) echo $kk
|
|   17.0:       (0.004565s|19.83%)      (4x) << (FUNCTION): h $kk >>
|   |-- 1.0:    (0.000224s|00.97%|05.57%)       (4x) h $kk
|   |   8.0:    (0.000265s|01.15%|06.53%)       (4x) echo "h: $*"
|   |   9.0:    (0.000501s|02.17%|12.46%)       (4x) << (FUNCTION): f "$@" >>
|   |   |-- 1.0:        (0.000168s|00.72%|44.68%)       (3x) f "$@"
|   |   |-- 8.0:        (0.000208s|00.90%|55.31%)       (3x) echo "f: $*"
|   |   10.0:   (0.003575s|15.53%|75.40%)       (4x) << (FUNCTION): g "$@" >>
|   |   |-- 1.0:        (0.002258s|09.80%|84.62%)       (3x) g "$@"
|   |   |   330.0:      (0.000410s|01.78%|15.37%)       (3x) << (SUBSHELL) >>
|   |-- |-- |-- 330.0:  (0.000410s|01.78%|100.00%)      (3x) echo "g: $*"
|   |-- 1.0:            (0.000166s|00.72%|04.90%)       (3x) h $kk
|   |   8.0:            (0.000199s|00.86%|05.82%)       (3x) echo "h: $*"
|   |   9.0:            (0.000373s|01.62%|11.03%)       (3x) << (FUNCTION): f "$@" >>
|   |   |-- 1.0:        (0.000224s|00.97%|44.71%)       (4x) f "$@"
|   |   |-- 8.0:        (0.000277s|01.20%|55.28%)       (4x) echo "f: $*"
|   |   10.0:           (0.003064s|13.31%|78.22%)       (3x) << (FUNCTION): g "$@" >>
|   |-- 1.0:                    (0.000054s|00.23%|04.70%)       (1x) h $kk
|   |   8.0:                    (0.000063s|00.27%|05.48%)       (1x) echo "h: $*"
|   |   9.0:                    (0.000124s|00.53%|10.80%)       (1x) << (FUNCTION): f "$@" >>
|   |   10.0:                   (0.000907s|03.94%|79.00%)       (1x) << (FUNCTION): g "$@" >>
|   |   |-- 1.0:        (0.003042s|13.21%|85.07%)       (4x) g "$@"
|   |   |   330.0:      (0.000533s|02.31%|14.91%)       (4x) << (SUBSHELL) >>
|   |   |-- |-- 330.0:                  (0.000123s|00.53%|100.00%)      (1x) echo "g: $*"
|
|   18.0:       (0.000729s|03.16%)      (12x) for jj in {1..3}
|
|   19.0:       (0.001532s|06.65%)      (12x) << (FUNCTION): f $kk $jj >>
|   |-- 1.0:            (0.000444s|01.92%|43.31%)       (8x) f $kk $jj
|   |-- 8.0:            (0.000583s|02.53%|56.67%)       (8x) echo "f: $*"
|   |-- 1.0:    (0.000668s|02.90%|43.66%)       (12x) f $kk $jj
|   |-- 8.0:    (0.000864s|03.75%|56.32%)       (12x) echo "f: $*"
|
|   20.0:       (0.007511s|32.63%)      (12x) << (FUNCTION): g $kk $jj >>
|   |-- 1.0:    (0.006468s|28.09%|86.14%)       (12x) g $kk $jj
|   |   330.0:  (0.001043s|04.53%|13.84%)       (12x) << (SUBSHELL) >>
|   |-- |-- 330.0:      (0.000805s|03.49%|100.00%)      (9x) echo "g: $*"
|   |-- 1.0:            (0.005236s|22.74%|86.09%)       (10x) g $kk $jj
|   |   330.0:          (0.000849s|03.68%|13.89%)       (10x) << (SUBSHELL) >>
|   |-- |-- 330.0:      (0.001043s|04.53%|100.00%)      (12x) echo "g: $*"
|-- |-- |-- 330.0:                      (0.000232s|01.00%|100.00%)      (2x) echo "g: $*"


TOTAL RUN TIME: 0.023018s

EOF
