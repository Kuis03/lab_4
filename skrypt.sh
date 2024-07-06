
case "$1" in
    --date|-d)
        date
        ;;
    --logs|-l)
        if [ -z "$2" ]; then
            num=100
        else
            num=$2
        fi
        for i in $(seq 1 $num); do
            echo "log${i}.txt - created by skrypt.sh on $(date)" > "log${i}.txt"
        done
        ;;
    --help|-h)
        echo "Usage: skrypt.sh [OPTIONS]"
        echo "--date, -d        Display the current date"
        echo "--logs, -l [num]  Create specified number of log files (default: 100)"
        echo "--help, -h        Display this help message"
        ;;
    --init)
        git clone https://github.com/Kuis03/lab_4.git $(pwd)/lab_4
        export PATH=$(pwd)/lab_4:$PATH
        ;;
    --error|-e)
        if [ -z "$2" ]; then
            num=100
        else
            num=$2
        fi
        mkdir -p error
        for i in $(seq 1 $num); do
            echo "error${i}.txt - created by skrypt.sh on $(date)" > "error/error${i}.txt"
        done
        ;;
    *)
        echo "Invalid option. Use --help or -h to see the list of available options."
        ;;
esac

case "$1" in
    --date|-d)
        date
        ;;
    *)
        echo "Invalid option. Use --help or -h to see the list of available options."
        ;;
esac







