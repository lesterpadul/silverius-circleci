ls -la

# for i in $(find /app/config -type f | grep ".php"); do
#     # check file
#     echo "Checking file -> $i"

#     # try linting php file
#     OUTPUT=$(php -d error_reporting=32767 -l $i 2>&1)
#     CHECK="No syntax errors detected"

#     # check if has error
#     if !(grep -q "$CHECK" <<< "$OUTPUT"); then
#         echo "ERROR EXISTS!"
#         echo $OUTPUT
#         exit 1;
#     fi
# done
