#!/bin/bash
# Copyright Liukeshanren

#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at

#      http://www.apache.org/licenses/LICENSE-2.0

#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#  @file Test-Closure.go
#  @brief   Shell 练习
#  @details 根据项目要求练习项目内容 https://leetcode-cn.com/problems/tenth-line/ 195.第十行
#  @author      要你命三千又三千  any question please send mail to liukeshanren@gmail.com ,www.lksr.net
#  @date        2018-8-17
#  @version     V1.0
#  @attention
#  硬件平台: windows 10 家庭版
# 标准读取文件的格式
# cat "/path/to/file" | while read line; do
#     echo "${line}"
# done

lineNum=1
cat "file.txt" | while read line; do
    if [[ $lineNum == 10 ]]; then
        echo "${line}"
    fi
     ((lineNum++))
done
# 执行结果：
# 执行用时：12 ms, 在所有 Bash 提交中击败了25.75%的用户
# 内存消耗：3.6 MB, 在所有 Bash 提交中击败了31.34%的用户

# 在shell 的使用中，我们不要使用一般编程思想的想法；
# 要建立的是：工具思想来实现；

# 实现方式
# 主要有三个方面的思路：
# 使用 grep awk sed 文本处理的三剑客，来保证文本的高效处理。
# 在Linux shell 处理方式不再是类似传统处理方式，而是一种完全全新的处理方式。使用工具sed ,grep ,awk 来处理文件。
sed -n '10p' file.txt
# -n 即不自动打印，只打印匹配到的行
# '10p'