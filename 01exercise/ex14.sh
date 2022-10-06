# 编写一个脚本将所在目录下的所有文件的文件名改为以日期开始（格式：YYYY-MM-DD）并以.jpg结尾。例如，如果我的猫的一张图片在当前目录并且今天是2016年10月31日，图片的文件名将会从“mycat.jpg”改为“2016–10–31-mycat.jpg”。(本题目在自己建立的./folder14目录进行操作，内有两个空白文件使用png后缀名)
# Exercise_14 - Write the shell script that renames all files in the current directory that end in “.jpg” to begin with today’s date in the following format: YYYY-MM-DD. For example, if a picture of my cat was in the current directory and today was October 31,2016 it would change name from “mycat.jpg” to “2016–10–31-mycat.jpg”.

#!/bin/bash

DAY=$(date +%F)
cd ./folder14
count=1
for FILE in *.png
do

# 完成题目操作的语句
    mv $FILE ${DAY}-${FILE}

# 复原图片文件夹的语句。通过注释掉上一句，取消以下两句注释可以复原图片文件夹。
    # mv $FILE test$count.png  
    # let count+=1

done


# 输出结果：
# 本题没有输出结果，观察当前目录下的img文件夹内容变化即可。


# 本题目练习了date命令带格式化输出。以及for ... in ... do ... done的循环语句。
# This topic exercises the date command with formatted output. and the for...in...do...done loop statement.