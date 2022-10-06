# 题目：编写一个脚本，要求用户输入一个路径，然后判断该路径所指示的资源是一个文件还是一个目录或者是其他类型的文件，并将结果打印出来，再对该路径执行带长输出的ls命令并显示结果。
# write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or another type of file. Also perform an ls command against the file or directory with the long listing option.

#!/bin/bash
echo "Enter a file path: "
read  FILE 

if [ -f $FILE ]
    then
        echo "这是个文件"
elif [ -d $FILE ]
    then 
        echo "这是个目录"
else 
    echo "这是其他类型的文件"
fi

ls -l $FILE

# 输出结果如下：
# $ ./ex6.sh 
# Enter a file path: 
# ex6.sh
# 这是个文件
# -rwxrwxr-x 1 yunshan yunshan 729  9月 24 21:07 ex6.sh

# 此题目练习了读取用户输入、带elif的多重分支、以及文件权限的测试。
# This problem exercises reading user input, multiple branches with elif, and tests for file permissions.