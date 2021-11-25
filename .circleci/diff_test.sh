for i in $(git diff origin/master..origin/$(git rev-parse --abbrev-ref HEAD) --name-only | grep ".php"); do
    echo "Checking file -> $i"
    OUTPUT=$(php -d error_reporting=32767 -l $i 2>&1)
    CHECK="No syntax errors detected"
    if !(grep -q "$CHECK" <<< "$OUTPUT"); then
        echo "ERROR EXISTS!"
        echo $OUTPUT
        exit 1;
    fi
done