for i in $(git diff --name-only | grep ".php"); do
    cd .. && php -d error_reporting=32767 -l $i
done