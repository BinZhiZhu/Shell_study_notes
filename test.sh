#!/bin/bash

##### 变量 #####

#变量名:不需要使用$符号，"="不能有空格
my_name="BinZhiZhu"

#输出:需要$符号
echo $my_name


##### 字符串 #####

#单引号

str='I try to learn shell '
echo $str

#双引号:可以有变量,可以有转义字符

str="My name is \"$my_name\",Nice to meet u"
echo $str

#拼接

str1="What's ur name,bro? My name is "$my_name"!"

str2="What's ur name,bro? My name is "{$my_name}"!"

str3="What's ur name,bro? My name is {$my_name}!"

echo $str1
echo $str2
echo $str3

#获取长度:${# + 变量}

str='qwer'

echo ${#str}

#提取子字符串:

str="my name is $my_name "

#提取名字：BinZhiZhu
echo ${str:11}

#提取指定索引范围:name
echo ${str:3:5}



########## 数组 #############

#括号括起来 元素之间用空格相隔
array=(a b c d)


#可以直接赋值
array1[0]=1
array1[1]=2

echo "所有元素为：${array[*]}"
echo "第一个元素为：${array[0]}"
echo "第二个元素为：${array[1]}"
echo "第三个元素为：${array[2]}"
echo "第四个元素为：${array[3]}"
