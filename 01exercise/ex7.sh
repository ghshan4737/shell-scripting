# 题目：在ex6.sh的基础上进行修改，使其用参数形式接收一个资源路径，而不是要求用户输入。
# Modify the previous script to that it accepts the file or directory name as an argument instead of prompting the user to enter it.

#!/bin/bash
FILE=$1

if [ -f $FILE ]
    then
        echo "这是一个文件"
elif [ -d $FILE ]
    then
        echo "这是一个目录"
else
    echo "这是一个其他类型的文件"
fi

ls -l $FILE

# 输出结果：
# $ ./ex7.sh ex6.sh
# 这是一个文件
# -rwxrwxr-x 1 yunshan yunshan 1078  9月 24 21:14 ex6.sh

# 此题目练习了脚本参数接收。
# This topic exercises that how to recept script parameter.