# 题目：编写一个脚本，把"man","bear","pig","dog","cat","sheep"在单独的行中显示出来，用尽可能少的代码行数。

# Write a shell script that displays “man”,”bear”,”pig”,”dog”,”cat”,and “sheep” on the screen with each appearing on a separate line. Try to do this in as few lines as possible.

#！ /bin/bash
ANIMAL="man bear pig dog cat sheep"

for ani in $ANIMAL
do 
    echo $ani
done

# 输出结果如下：
# $ ./ex5.sh 
# man
# bear
# pig
# dog
# cat
# sheep

# 本题练习了使用for语句遍历变量值。
# This exercise practiced using the for statement to iterate over variable values.