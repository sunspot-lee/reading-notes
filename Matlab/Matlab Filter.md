---
tags: [Matlab]
title: Matlab Filter
created: '2019-10-28T01:09:13.198Z'
modified: '2019-10-28T01:09:36.631Z'
---

# Matlab 滤波器

## IIR滤波器

### Bessel：幅度响应单调，群延迟在通带近似常数

`[z,p,k]=besselap(n)`

`[...]=besself(n,Wo)` 指定阶数和常数群延迟截止频率，设计模拟低通IIR滤波器

### Butterworth：幅度响应单调

`[z,p,k]=buttap(n)`

`[...]=butter(n,Wn...)` 指定阶数和3dB截止频率，设计IIR滤波器

`[n,Wn]=buttord(Wp,Ws,Rp,Rs...)` 根据通带参数和阻带参数计算最佳的butter(...)参数

`[b,a]=maxflat(n,m,Wn)` 指定分子、分母阶数和3dB截止频率，设计数字低通IIR滤波器

`b=maxflat(n,'sym',Wn)` 指定阶数和3dB截止频率，设计数字低通FIR滤波器

### Chebyshev Type I：幅度响应在通带等波纹，阻带单调

`[z,p,k]=cheb1ap(n,Rp)`

`[...]=cheby1(n,R,Wp...)` 指定阶数、通带波纹和通带截止频率，设计IIR滤波器

`[n,Wp] = cheb1ord(Wp,Ws,Rp,Rs...)` 根据通带参数和阻带参数计算最佳的cheby1(...)参数

### Chebyshev Type II：幅度响应在阻带等波纹，通带单调

`[z,p,k]=cheb2ap(n,Rs)`

`[...]=cheby2(n,R,Ws...)` 指定阶数、阻带衰减和阻带截止频率，设计IIR滤波器

`[n,Ws] = cheb2ord(Wp,Ws,Rp,Rs...)` 根据通带参数和阻带参数计算最佳的cheby2(...)参数

### Elliptic：幅度响应在通带和阻带等波纹

`[z,p,k]=ellipap(n,Rp,Rs)`

`[...]=ellip(n,Rp,Rs,Wp...)` 指定阶数、通带波纹、阻带衰减和通带截止频率，设计IIR滤波器

`[n,Wp] = ellipord(Wp,Ws,Rp,Rs...)` 根据通带参数和阻带参数计算最佳的ellip(...)参数

### Yule-Walker算法

`[b,a]=yulewalk(n,f,m)` 指定阶数和(频率,幅度)，设计数字IIR滤波器，最小化均方误差

## 模拟-数字转换

### bilinear

`[bz,az]=bilinear(b,a,fs...)`

`[zd,pd,kd]=bilinear(z,p,k,fs...)`

`[Ad,Bd,Cd,Dd]=bilinear(A,B,C,D,fs...)`

### impinvar

`[bz,az]=impinvar(b,a,fs...)`

## 类型转换

`[...]=lp2bp(...)`低通到带通

`[...]=lp2bs(...)`低通到带阻

`[...]=lp2hp(...)`低通到高通

`[...]=lp2lp(...)`改变低通截止频率

## FIR滤波器

| Type | 阶数   | 对称   | H(0) | H(1) |
| ---- | ---- | ---- | ---- | ---- |
| I    | 偶数   | 偶对称  |      |      |
| II   | 奇数   | 偶对称  |      | 0    |
| III  | 偶数   | 奇对称  | 0    | 0    |
| IV   | 奇数   | 奇对称  | 0    |      |

### 窗函数法

`b=fir1(n,Wn...)` 指定阶数和6dB截止频率

`[...]=kaiserord(f,a,dev...)`指定(频率,幅度,偏差)，求fir1()参数

`b=fir2(n,f,m...)` 指定阶数和(频率,幅度)

### 最小均方误差

`b=firls(n,f,a...)` 指定阶数和关注频带的(两端频率,两端幅度)

`b=fircls(n,f,a,up,lo)` 指定阶数、频带划分点和(幅度,误差上限,误差下限)

`b=fircls1(n,Wo,Rp,Rs...)` 指定阶数、截止频率、通带波纹和阻带衰减

### 等波纹

`b=firpm(n,f,a...)` 指定阶数和关注频带的(两端频率,两端幅度)

`[n,fo,ao,w] = firpmord(f,a,dev...)` 根据关注频带的幅度和最大波纹计算最佳的`firpm(...)`参数

`b=cfirpm(n,f,...)` 指定阶数、关注频带和响应函数

## 特殊滤波器

`b=intfilt(l,p,...)` 插值滤波器

`h=gaussdesign(bt,span,sps)` Gauss滤波器

`b=rcosdesign(beta,span,sps...)` 升余弦滤波器

`b=sgolay(k,f...)` 平滑滤波器



序列$x[n]$的Fourier变换为

$$
X(e^{j\omega}) = \sum_{n=-\infty}^{+\infty} x[n] e^{-j\omega n}
$$
当$\omega=0$，$X(1)=\sum_{n=-\infty}^{+\infty}x[n]$

当$\omega=\pi$，$X(-1)=\sum_{n=-\infty}^{+\infty}(-1)^n x[n]$

当$\omega=\pm\pi/2$，$X(\pm j)=\sum_{n=-\infty}^{+\infty}(\mp j)^n x[n]$

