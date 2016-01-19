usage () {
    echo -n "$0"
    echo -n " -a age"
    echo -n " -n name"
    echo ""
}
if [ -z $1 ]; then
	usage
	exit 1
fi

while getopts a:n: opt
do
	case $opt in
		a) echo "age = "$OPTARG"";;
		n) echo "name = "$OPTARG"";;
	esac
done
