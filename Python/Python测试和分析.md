# 1. 测试
## 1.1. pytest
* 安装pytest
* 在命令行上运行`pytest`
    * 寻找当前目录以及所有子目录下的，`test_*.py`或`*_test.py`名称的文件
    * 在这些文件中寻找以`test`开头的函数或方法
# 2. 覆盖率
## 2.1. trace

## 2.2. coverage

# 3. 时间
## 3.1. time
`time.perf_counter()` system-wide，包括sleep
`time.process_time()` 进程消耗的system和user的CPU时间，不包括sleep
`time.thread_time()` 线程消耗的system和user的CPU时间，不包括sleep
## 3.2. timeit
## 3.3. cProfile

* 在命令行上执行`python -m cProfile [-s sort] xxx.py`
    * 可用的排序方式：cumtime, tottime, calls, pcalls
* 在命令行上执行`python -m cProfile -o output xxx.py`
    * 然后调用pstats库分析保存在output文件中的结果
## 3.4. ipython
* 在ipython命令行上执行
    * `%time xxx` 和 `%timeit xxx` 一个语句或表达式的执行时间
    * `%prun xxx` 每个函数的执行时间
# 4. 内存
## 4.1. tracemalloc
