# ripgrep
ver 11.0.0

USAGE:

* rg [OPTIONS] PATTERN [PATH ...]
* rg [OPTIONS] [-e PATTERN ...] [-f PATTERNFILE ...] [PATH ...]
* rg [OPTIONS] --files [PATH ...]
* rg [OPTIONS] --type-list
* command | rg [OPTIONS] PATTERN

常用OPTION:

* -t <TYPE> 只搜索TYPE类型的文件，-T <TYPE> 不搜索TYPE类型的文件，--type-list 显示所有支持的文件类型
* -g <GLOB> 搜索的文件和路径，--iglob <GLOB> 不搜索的文件和路径
* -z 搜索压缩文件
* -E <ENCODING> 指定文本编码。缺省auto将检查文件开头的BOM，none将不做检查

* -s 区分大小写，-i 忽略大小写，-S 如果PATTERN全小写，忽略大小写，否则区分大小写
* -F 把PATTERN看做普通字符串而不是正则表达式
* -w 整词匹配，-x 整行匹配
* -U 多行匹配，可以使用\n

* -v 显示不匹配PATTERN的行
* -l 只显示包含匹配的文件，--files-without-match 只显示不包含匹配的文件
* -c 只显示包含匹配的行数目，--count-matches 只显示匹配数目

* -r <REPLACEMENT_TEXT> 替换

正则表达式语法：[Regular Expression](https://docs.rs/regex/1.1.7/regex/#syntax)