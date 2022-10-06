# 修改上一个练习的脚本。让file_count函数接收一个目录作为参数。然后让函数显示该目录并跟着一个冒号。最后在下一行显示出目录中的文件数。调用此函数三次。第一次传入“/etc”，第二次传入“/var”，第三次传入“/usr/bin”。

# Exercise_13 - Modify the script from the previous exercise. Make the “file_count” function accept a directory as an argument. Next, have the function display the name of the directory followed by a colon. Finally display the number of files to the screen on the next line. Call the function three times. First on the “/etc” directory, next on the “/var” directory and finally on the “/usr/bin” directory.


#!/bin/bash 

file_count() {
    cd $1
    echo "$(pwd):"
    local NUMBER_OF_FILE=$(ls -l | wc -l)
    echo "当前工作目录下文件数为$NUMBER_OF_FILE"
}

file_count /etc
file_count /var
file_count /usr/bin

# 输出结果：
# $ sudo ./ex13.sh
# /etc:
# 当前工作目录下文件数为267
# /var:
# 当前工作目录下文件数为14
# /usr/bin:
# 当前工作目录下文件数为2028

# 本题目练习了在函数中调用参数完成函数功能的方式。
# This topic exercises how to call parameters in a function to complete the function of the function.