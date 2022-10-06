# 编写一个脚本，根据文件后缀名来重命名所有符合条件的文件。然后，脚本询问用户想要为文件添加什么样的前缀。默认情况下，前缀为当前日期（格式为YYYY-MM-DD）。如果用户直接按下回车，就使用当前日期，否则使用用户输入的内容作为文件名前缀。下一步输出原始文件名和更改的新文件命。最后一步进行文件重命名操作。
# Exercise_15 - Write the script that renames files based on the file extension. Next,It should ask the user what prefix to prepend to the file name(s). By default, the prefix should be the current date in YYYY-MM-DD format. If the user simply press enter,the current date will be used. Otherwise,whatever the user entered will be used as the prefix. Next,it should display the original file name and new name of the file. Finally,it should rename the file.

#!/bin/bash
cd ./folder15
echo "尊敬的用户，您想要重命名哪种类型的文件，请输入该文件类型的后缀名："
read EXTENSION

echo "请输入您想为该类型文件添加的前缀并回车确认（无输入直接回车则添加当前日期为前缀）："
read prefix
if [ -z $prefix ]
then 
    prefix=$(date +%F)
fi
echo "您输入的前缀名为：$prefix"
for FILE in *.$EXTENSION
do
    echo "$FILE被重命名为$prefix-$FILE"
    mv $FILE $prefix-$FILE
done

# 输出结果如下：

# 案例1：使用默认的日期前缀
# $ ./ex15.sh 
# 尊敬的用户，您想要重命名哪种类型的文件，请输入该文件类型的后缀名：
# txt
# 请输入您想为该类型文件添加的前缀并回车确认（无输入直接回车则添加当前日期为前缀）：
# 
# 您输入的前缀名为：2022-10-07
# 1.txt被重命名为2022-10-07-1.txt
# 2.txt被重命名为2022-10-07-2.txt

# 案例2：使用用户输入的前缀
# $ ./ex15.sh 
# 尊敬的用户，您想要重命名哪种类型的文件，请输入该文件类型的后缀名：
# jpg
# 请输入您想为该类型文件添加的前缀并回车确认（无输入直接回车则添加当前日期为前缀）：
# userdata
# 您输入的前缀名为：userdata
# 3.jpg被重命名为userdata-3.jpg
# 4.jpg被重命名为userdata-4.jpg

# 本题目练习了在if语句中使用-z选项来判断字符串是否为空的方法。在练习文件夹folder15中放入两种后缀名的文件，并且测试了脚本在无用户输入和有用户输入的情况下的表现。

# This topic exercises the method of using the -z option in an if statement to determine whether a string is empty. Put files with two suffixes in the exercise folder folder15, and test the performance of the script without and with user input.