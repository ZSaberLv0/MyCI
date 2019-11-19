WORK_DIR=$(cd "$(dirname "$0")"; pwd)

if test "x-$MYCI_KEY" = "x-" ; then
    echo "MYCI_KEY not set"
    exit 1
fi

