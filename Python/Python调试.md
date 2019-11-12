---
tags: [Python]
title: Python调试
created: '2019-10-28T01:10:04.435Z'
modified: '2019-10-28T01:10:26.489Z'
---

# 1. ipdb
* 在命令行上执行`ipdb3 xxx.py`
# 2. ipython
* 在命令行上执行`ipython --pdb xxx.py`
* 在ipython命令行上执行`%run -d xxx`
# 3. pdb调试命令
|    命令    |              说明               |
| --------- | ------------------------------ |
| h         | 帮助                            |
| l         | list                           |
| ll        | longlist                       |
| a         | 打印当前函数入参                 |
| p         | 打印表达式                      |
| pp        | 打印表达式                      |
| whatis    | 打印表达式类型                   |
| source    | 打印表达式源代码                 |
| display   | 监控表达式，变化时打印            |
| undisplay | 停止监控                        |
| **栈**     |                                |
| w         | 打印栈                          |
| d         | 栈中降级                        |
| u         | 栈中升级                        |
| **断点**   |                                |
| b         | 设置行号断点或函数断点，可设置条件 |
| tbreak    | 设置临时断点                     |
| cl        | 清除断点                        |
| disable   | 停用断点                        |
| enable    | 启用断点                        |
| ignore    | 设置断点停用次数                 |
| condition | 设置断点触发条件                 |
| commands  | 设置断点触发命令                 |
| **运行**   |                                |
| s         | step                            |
| n         | next                            |
| unt       | until [lineno]                 |
| r         | return                          |
| c         | continue                        |
| j         | jump lineno                     |
| run       | 重启程序                        |
| q         | 退出调试                        |
| **高级**   |                                |
| !         | 执行一行语句                     |
| interact  | 启动一个解释器                   |
| alias     | 定义一个宏命令                   |
| unalias   | 删除一个宏命令                   |
