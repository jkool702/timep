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

0.0:                    (0.027931s|100.00%)     (1x) << (FUNCTION): testfunc "${@}" >>
|-- 1.0:                (0.000061s|00.21%|00.21%)       (1x) testfunc "${@}"
|
|   8.0:                (0.000068s|00.24%)      (1x) echo 0
|
|   9.0:                (0.001054s|03.77%)      (1x) echo 1
|
|   10.0:               (0.000209s|00.74%)      (1x) << (SUBSHELL) >>
|   |-- 10.0:           (0.000209s|00.74%|100.00%)      (1x) echo 2
|
|   11.0:               (0.000500s|01.79%)      (1x) echo 3 (&)
|
|   12.0:               (0.000838s|03.00%)      (1x) << (BACKGROUND FORK) >>
|   |-- 12.0:           (0.000072s|00.25%|100.00%)      (1x) echo 4
|
|   13.0:               (0.005274s|18.88%)      (1x) echo 5 | cat | tee
|
|   15.0:               (0.000307s|01.09%)      (5x) ((kk=6))
|
|   15.1:               (0.000310s|01.10%)      (5x) ((kk<10))
|
|   16.0:               (0.000298s|01.06%)      (4x) echo $kk
|
|   17.0:               (0.003739s|13.38%)      (4x) << (FUNCTION): h $kk >>
|   |-- 1.0:            (0.000226s|00.80%|06.08%)       (4x) h $kk
|   |   8.0:            (0.000294s|01.05%|07.86%)       (4x) echo "h: $*"
|   |   9.0:            (0.000528s|01.89%|14.15%)       (4x) << (FUNCTION): f "$@" >>
|   |   |-- 1.0:        (0.000226s|00.80%|42.94%)       (4x) f "$@"
|   |   |-- 8.0:        (0.000302s|01.08%|57.04%)       (4x) echo "f: $*"
|   |   10.0:           (0.002691s|09.63%|71.88%)       (4x) << (FUNCTION): g "$@" >>
|   |   |-- 1.0:        (0.002353s|08.42%|87.37%)       (4x) g "$@"
|   |   |   330.0:      (0.000338s|01.21%|12.61%)       (4x) << (SUBSHELL) >>
|   |-- |-- |-- 330.0:  (0.000338s|01.21%|100.00%)      (4x) echo "g: $*"
|
|   18.0:               (0.000717s|02.56%)      (12x) for jj in {1..3}
|
|   19.0:               (0.001516s|05.42%)      (12x) << (FUNCTION): f $kk $jj >>
|   |-- 1.0:            (0.000681s|02.43%|44.92%)       (12x) f $kk $jj
|   |-- 8.0:            (0.000835s|02.98%|55.07%)       (12x) echo "f: $*"
|
|   20.0:               (0.013038s|46.67%)      (12x) << (FUNCTION): g $kk $jj >>
|   |-- 1.0:            (0.011424s|40.90%|87.70%)       (12x) g $kk $jj
|   |   330.0:          (0.001614s|05.77%|12.28%)       (12x) << (SUBSHELL) >>
|-- |-- |-- 330.0:      (0.001614s|05.77%|100.00%)      (12x) echo "g: $*"

TOTAL RUN TIME: 0.027931s

EOF
