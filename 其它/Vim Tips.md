## Vim中的搜索

* 一般字符串搜索
  * `/abc`, `?abc`, `*`, `#` 在当前buffer中搜索
  * `:grep abc` 在当前目录中搜索
* tag搜索。必须先建立tag数据库。更准确，比如搜索时忽略注释和字符串
  * `:tag abc`,  `<ctrl>]` 跳转到定义
  * `:tj abc`, `g<ctrl>]` 选择tag跳转
  * `<ctrl>T` 回到上一个tag

## VIM中的代码定位
* `[m`, `]m` 跳到前/后一个Method的开头
* `[M`, `]M` 跳到前/后一个Method的结尾
* `gd`, `gD` 跳到标志符的本地/全局声明处

## Vim 中的搜索模式

### 偏移

`/abc/2` 搜索到 abc 后光标会下移2行

`/abc/e` 搜索到 abc 后光标会放在 c 上

`/abc/e+` 搜索到 abc 后光标会放在 c 右边一个字符上

`/abc/e-` 搜索到 abc 后光标会放在 b 上

`/abc/b+2` 搜索到 abc 后光标会放在 c 上

`/abc/;/def` 搜索到 abc 后继续搜索 def

### 逻辑

`abc\|def` or 关系。 abc 或 def

`abcdef\&...` and 关系，匹配最后一项。前面有 abc 的 def

### 重复

| 最多匹配模式    | 最小匹配模式   | 含义      |
| --------- | -------- | ------- |
| * or \\{} | \\{-}    | 0~inf 次 |
| \\+       |          | 1~inf 次 |
| \\= or \? |          | 0~1 次   |
| \\{n,m}   | \\{-n,m} | n~m 次   |
| \\{n}     | \\{-n}   | n 次     |
| \\{n,}    | \\{-n,}  | n~inf 次 |
| \\{,m}    | \\{-,m}  | 0~m 次   |

`abc\(def\)\@=` 匹配 abc ，要求后面有 def

`abc\(def\)\@!` 匹配 abc ，要求后面没有 def

`\(abc\)\@<=def` 匹配 abc ，要求前面有 def

`\(abc\)\@<!def` 匹配 abc ，要求前面没有 def

### 字符类

| 模式                  | 含义                     |
| ------------------- | ---------------------- |
| \i \I               | 标志符 `isident`          |
| \k \K               | 关键字 `iskeyword`        |
| \f \F               | 文件名 `isfname`          |
| \p \P               | 可见字符 `isprint`         |
| \s \S               | <Space> 或 <Tab>        |
| \d \D               | 数字                     |
| \x \X               | 16进制数字                 |
| \o \O               | 进制数字                   |
| \w \W               | 数字、字母或下划线              |
| \h \H               | 字母或下划线                 |
| \a \A               | 字母                     |
| \l \L               | 小写字母                   |
| \u \U               | 大写字母                   |
| \\_x                | x是上面任意一种字母，代表对应的字符类或换行 |
| [……]                | 方括号中的任意字符              |
| \%[……]              | 方括号中的任意 atom           |
| \%d \%x \%o \%u \%U | 编码对应的字符                |

\zs 开始匹配，`abc\zsdef` 匹配 def，要求前面有 abc

\ze 结束匹配，`abc\zedef` 匹配 abc，要求后面有 def

## 字母大小写

| 命令      | 含义                               |
| --------- | ---------------------------------- |
| ~         | 切换当前字母大小写，并右移光标     |
| ~{motion} | 切换{motion}经过范围字母大小写     |
| g~~       | 切换当前行字母大小写               |
| {Visual}~ | Visual模式，切换选择范围字母大小写 |

`:s/\v<(\w)(\w*)/\u\1\L\2/g`使当前行所有单词首字母大写，其它字母小写

## Vim中的Python

`:[range]py3 {stmt}`执行Python语句{stmt}

`:[range]py3do {body}`执行Python函数，函数入参为(line, linenr)，函数体为{body}，函数返回string或None

`:[range]py3f[ile] {file}`执行Python脚本{file}

Vim为Python提供了一个vim模块，模块中定义了：

* command(str) 在ex模式下执行vim命令str，返回None
* eval(str) 用vim计算表达式str，返回string、list、或dict
* bindeval(str) 类似eval(str)，但是返回对象
* strwidth(str) 返回str显示宽度
* buffers
* windows
* tabpages
* current

## 插件Fugitive：执行Git命令

## 插件Signify：处理Hunk对象(c)

`]c` Next hunk

`[c` Previous hunk

`]C` Last hunk

`[C` First hunk

`:SignifyDiff` 在一个新Tab中比较当前文件与VCS的不同

`:SignifyFold` 在一个新Tab中打开当前文件并折叠没修改的部分

`:SignifyHunkDiff` 显示当前行的变化

`:SignifyHunkUndo` Undo当前行的变化

## 插件LeaderF：模糊搜索

`:Leaderf {subcmd}` 执行LeaderF的子命令：file、tag、function、mru、searchHistory、cmdHistory、help、line、colorscheme、gtags、self、bufTag、buffer、rg

`<leader>f` 搜索文件

`<leader>b` 搜索buffer

`<leader>m` 搜索mru

LeaderF被启动后

* `<ctrl>r` fuzzy search和regex之间切换
* `<ctrl>f` full path和name only之间切换
* `<tab>` normal模式
* `<cr>` 打开
* `<ctrl>x` 水平分割打开
* `<ctrl>]` 垂直分割打开
* `<ctrl>t` 新tab打开
* `<ctrl>p` 预览

## 插件ListToggle：开关QuickFix窗口和Location窗口

`<leader>q` 开关quick-fix窗口

`<leader>l` 开关location窗口

## 插件EasyMotion：快速移动

`<leader><leader>{cmd}`

## 插件Repeat

## 插件NERDCommenter：注释

`<leader>c<space>` 开关注释

## 插件Surround：编辑成对tag

`ds<tag>` 删除

`cs<tag1><tag2>` 修改

`ys<object|motion><tag>` 增加

`S<tag>` visual模式下的增加

## 插件LineDiff：比较

## 插件Jedi：Python

`<leader>d` 跳转到定义或赋值

`<leader>g` 跳转到赋值

`<leader>s` 跳转到stub

`K` 文档

`<leader>r` 改名

`<leader>n` 搜索引用
