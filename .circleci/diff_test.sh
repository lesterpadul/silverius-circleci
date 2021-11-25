for i in $(git diff origin/master..origin/$(git rev-parse --abbrev-ref HEAD) --name-only | grep ".php"); do
    echo "Checking file -> $i"
    message=$(php -d error_reporting=32767 -l $i 2>&1)
    echo $message
done