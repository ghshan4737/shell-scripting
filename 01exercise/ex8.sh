# 题目：在ex7.sh的基础上，修改脚本使其能够接收不限个数的参数。
# Modify the previous script to accept an unlimited number of files and directories as arguments.

#!/bin/bash
RESOURCES=$@
count=1
for RS in $RESOURCES    
    do
    if [ -f $RS ]
        then
            echo "第$count个参数是一个文件"
    elif [ -d $RS ]
        then
            echo "第$count个参数是一个目录"
    else
        echo "这是一个其他类型的文件"
    fi

    ls -l $RS
    count=$(expr $count + 1)
    # count=`expr $count + 1`
    # let count+=1
    # ((count++))
    # count=$[$count+1]
    # count=$(($count + 1))
    echo 
    done

# 输出结果如下：
# $ ./ex8.sh ex6.sh READEME .
# 第1个参数是一个文件
# -rwxrwxr-x 1 yunshan yunshan 1078  9月 24 21:14 ex6.sh

# 第2个参数是一个文件
# -rw-rw-rw- 1 yunshan yunshan 117  9月 24 19:42 READEME

# 第3个参数是一个目录
# 总用量 36
# -rwxrwxr-x 1 yunshan yunshan  193  9月 24 19:42 ex1.sh
# -rwxrwxr-x 1 yunshan yunshan  213  9月 24 19:42 ex2.sh
# -rwxrwxr-x 1 yunshan yunshan  434  9月 24 20:56 ex3.sh
# -rwxrwxr-x 1 yunshan yunshan  982  9月 24 20:54 ex4.sh
# -rwxrwxr-x 1 yunshan yunshan  650  9月 24 20:54 ex5.sh
# -rwxrwxr-x 1 yunshan yunshan 1078  9月 24 21:14 ex6.sh
# -rwxrwxr-x 1 yunshan yunshan  687  9月 24 21:24 ex7.sh
# -rwxrwxr-x 1 yunshan yunshan  670  9月 24 22:20 ex8.sh
# -rw-rw-rw- 1 yunshan yunshan  117  9月 24 19:42 READEME

# 本题练习了多参数shell脚本遍历参数的方法。同时在脚本内练习了变量自增的几种写法。对输出结果进行了美化。
# This question exercises the method of traversing parameters in a multi-parameter shell script. At the same time, several ways of writing variable auto-increment are practiced in the script. The output result has been beautified.