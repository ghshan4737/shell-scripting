# 题目：编写一个脚本，检查所在目录下另一文件是否存在。如果存在，显示“文件：（文件名）已存在”。然后检查是否能够写入该文件，如果可以，显示“你有权编辑此文件：（文件名），如果不能写入，显示”你无权编辑此文件：（文件名）。

# 提示：就以脚本所在目录下的README文件进行测试。文件路径为：E:\运维学习\shell-scripting\01exercise\READEME

#！/bin/bash
FILE="READEME"

if [ -e "$FILE" ]
    then
        echo "文件$FILE 已存在"
fi

if [ -w "$FILE" ]
    then 
        echo "你有权编辑此文件：$FILE"
    else
        echo "你无权编辑此文件：$FILE"
fi 

# 输出结果如下：
# $ ./ex4.sh 
# 文件READEME 已存在
# 你有权编辑此文件：READEME

# 此题目练习了if-then-else分支语句语法，并且测试了文件权限。
# This exercise practiced if-then-else branch statement syntax and tested file permissions.