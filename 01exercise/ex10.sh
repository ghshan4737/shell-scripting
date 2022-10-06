# 题目：编写一个脚本，接受一个资源路径作为参数。让脚本报告该资源是文件、目录或是其他类型。如果是目录，则以状态码1退出。如果是其他类型文件，以状态码2退出。

# Exercise_10 - Write a shell script that accepts a file or directory name as an argument. Have the script report if it is reguler file, a directory, or another type of file. If it is a directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.

#!/bin/bash
echo "资源路径为$1"
RES=$1
if [ -f $RES ]
    then 
    echo "该资源是一个文件"
elif [ -d $RES ]
    then
    echo "该资源是一个目录"
    exit 1
else
    echo "该资源是一个其他类型文件"
    exit 2
fi

# 输出结果如下：

# $ ./ex10.sh ex9.sh
# 资源路径为ex9.sh
# 该资源是一个文件

# $ ./ex10.sh .
# 资源路径为.
# 该资源是一个目录

# 本题练习了分支语句中使用不同退出状态码的方法。
# This problem exercises the use of different exit status codes in branch statements.