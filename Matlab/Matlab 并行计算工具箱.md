---
tags: [Matlab]
title: Matlab 并行计算工具箱
created: '2019-10-28T01:09:13.203Z'
modified: '2019-10-28T01:09:36.605Z'
---

# Parallel Computing Toolbox

Matlab 2017b

## parfor

* parfor循环不能嵌套
* parfor循环变量必须是连续递增整数
* parfor循环体必须彼此独立
* parfor循环不能提前终止，因此循环中不能有break或return
* parfor循环体中的变量的限制参见[Troubleshoot Variables in parfor-Loops]

## parfeval

```matlab
F = parfeval(fcn, numout, in1, in2, ...)
```

异步执行函数fcn并立即返回，fcn的入参为in1, in2, ...，并且有numout个出参。返回一个parallel.FevalFuture对象，用这个对象，可以：

* fetchNext(Fs) 返回Fs中的一个可读未读输出
* cancel(Fs) 终止Fs运行
* wait(Fs) 等待Fs完成

## batch

```matlab
job = batch('cmd');
job = batch(fcn, N, {in1, in2, ...});
```

后台执行命令cmd或函数fcn

## GPU

### 传输数据

#### Workspace->GPU
G=gpuArray(X)

#### GPU->Workspace
X=gather(G)

### 在GPU上创建数组

#### eye

#### true, false

#### Inf, NaN

#### zeros, ones

#### rand, randi, randn

#### linspace, logspace

#### colon

### 在GPU上运行函数

#### A=arrayfun(@fun, B...)
对B的每个元素执行fun

#### A=bsxfun(@fun, B, C)
对B和C的每个对应元素执行fun

#### A=pagefun(@fun, B...)
对B的每个2维页执行fun
