

my_function_list=()
helpf() {
  for value in "${my_function_list[@]}"
  do  
     echo $value
  done


my_function_list+=("recentfile")
recentfile() {
  nf=$1
  [ ! -z "$nf" ] || nf=10
  echo "${FUNCNAME[0]}(): showing $nf most recently modified files"
  f=`find . -type f -printf "%T@ %p\n" | sort -n | tail -$nf | cut -f2- -d" "`
  ls -thrl $f
}


