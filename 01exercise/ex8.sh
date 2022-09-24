# 题目：在ex7.sh的基础上，修改脚本使其能够接收不限个数的参数。
# Modify the previous script to accept an unlimited number of files and directories as arguments.

no=$#
count=0
echo $no
echo $count
while [ $count -lt $no ]
do
    echo $count
    echo $[$count]
    if [ -f $[$count] ]
        then
            echo "这是一个文件"
    elif [ -d $[$count] ]
        then
            echo "这是一个目录"
    else
        echo "这是一个其他类型的文件"
    fi

    ls -l $count
    count='expr $count + 1'
done