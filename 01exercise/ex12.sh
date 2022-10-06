# 题目：编写一个脚本包含如下函数：将当前工作目录下的文件数量显示出来。把这个函数命名为"file_count"。在你的脚本中调用它。如果你使用了变量，记得让他成为一个局部变量。

# Write a shell script that consists of a function that displays the number of files in the present working directory. Name this function “file_count” and call it in your script. If you use variable in your function, remember to make it a local variable.

#!/bin/bash 

file_count() {
    local NUMBER_OF_FILE=$(ls -l | wc -l)
    echo "当前工作目录下文件数为$NUMBER_OF_FILE"
}

file_count

# 输出结果如下：
# $ sudo ./ex12.sh 
# 当前工作目录下文件数为14

# 本题目练习了在shell脚本中定义和调用脚本的基本方式。
# This topic exercises the basics of defining and invoking scripts in shell scripts.