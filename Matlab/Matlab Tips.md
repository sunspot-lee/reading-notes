* validateattributes(A, classes, attributes) 可以检查参数A的类型属于classes中的一种，并且符合attributes中的所有属性。classes是cellstr或string vector。attributes是cell，内容可以是：
  * 检查形状的：'2d'、'3d'、'column'、'row'、'scalar'、'scalartext'、'vector'、'square'、'diag'、'nonempty'、'nonsparse'
  * 带参数检查形状的：'size', [d1,...,dN]、'numel', N、'ncols', N、'nrows', N、'ndims', N
  * 带参数检查取值的：'>', N、'>=', N、'<', N、'<=', N
  * 检查取值的：'binary'、'even'、'odd'、'integer'、'real'、'finite'、'nonnan'、'nonnegative'、'nonzero'、'positive'
  * 检查顺序的：'decreasing'、'increasing'、'nondecreasing'、'nonincreasing'
* validatestring(str, validStrings) 可以检查str
* memoize() 可以缓存函数的输入和输出，加速执行

```matlab
fsvd = memoize(@svd) % fsvd 可以象 svd 一样调用
```

* ! 和 system() 都可以执行外部命令并返回结果，在命令字符串最后加 & 可以后台执行

```matlab
! dir &
status = system('dir &')
```

* 在shell命令行上执行 matlab -r 可以执行脚本或函数

```
matlab -r myscript
```

