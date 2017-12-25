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

