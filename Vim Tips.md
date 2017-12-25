## Vim 中的模式

### 偏移

`/abc/2` 搜索到 abc 后光标会下移2行

`/abc/e` 搜索到 abc 后光标会放在 c 上

`/abc/e+` 搜索到 abc 后光标会放在 c 右边一个字符上

`/abc/e-` 搜索到 abc 后光标会放在 b 上

`/abc/b+2` 搜索到 abc 后光标会放在 c 上

`/abc;def` 搜索到 abc 后继续搜索 def

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

## 插件FZF

`:FZF`

## 插件ListToggle

`<F7>`

## 插件Tagbar

`<F8>`

## 插件airline

TODO

## 插件EasyMotion

`<Leader><key>`

## 插件NERDCommenter

`<Leader>c<space>` 改变注释状态

## 插件Surround

`ds<tag>` 删除

`cs<tag1><tag2>` 修改

`ys<object|motion><tag>` 增加

`S<tag>` visual模式下的增加

## 插件Tabular

`:Tabularize /<tag>`

## 插件ALE

TODO

## 插件Supertab

`<Tab>` insert模式下触发

## 插件Python-mode

`<leader>r` 运行
