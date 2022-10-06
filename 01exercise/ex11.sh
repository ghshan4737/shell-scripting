# 题目：编写一个脚本执行以下命令：cat /etc/shadow. 如果命令返回一个为0的退出状态码，报告“命令执行成功”并且以0状态码退出。如果命令返回一个非0状态码，报告“命令执行失败”并且以1状态码退出。

# Exercise_11 - Write a script that executes the command “cat/etc/shadow”. If the command return a 0 exit status, report “command succeeded” and exit with a 0 exit status. If the command returns a non-zero exit status, report “Command failed” and exit with a 1 exit status.


#！ /bin/bash
cat /etc/shadow
status=$?
if [ $status -eq '0' ]
then
    echo "命令执行成功！"
    exit 0
else
    echo "命令执行失败"
    exit 1
fi


# 输出结果如下：

# 失败案例（使用普通用户，权限不够）：
# $ ./ex11.sh 
# cat: /etc/shadow: 权限不够
# 命令执行失败

# 成功案例(已将部分输出省略）：
# $ sudo ./ex11.sh 
# root:$y$j9T$kjhTEYbi...iyypap3bndYRmvdxA:19239:0:99999:7:::
# daemon:*:19213:0:99999:7:::
# bin:*:19213:0:99999:7:::
# sys:*:19213:0:99999:7:::
# ...
# xrdp:!:19255:0:99999:7:::
# 命令执行成功！



# 本题目练习了通过“$?”来取得上一条命令退出状态码的用法。并且在if语句中使用了-eq来比较两个整数值。
# This topic practiced using "$?" to get the exit status code of the previous command. And -eq is used in the if statement to compare two integer values.