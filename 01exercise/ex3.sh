# 题目：将“hostname”命令输出的主机名存放在一个变量中。打印“此脚本运行在__"。

#!/bin/bash

HOST=$(hostname)
echo "此脚本运行在$HOST"

# 输出结果如下：
# $ bash ex3.sh 
# 此脚本运行在LAPTOP-F0L9HRH8

# 这个脚本使用$直接获取命令执行结果并将其值赋给变量。