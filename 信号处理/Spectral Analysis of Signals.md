---
tags: [信号处理]
title: Spectral Analysis of Signals
created: '2020-01-06T14:04:15.221Z'
modified: '2020-01-06T14:09:28.854Z'
---

# Spectral Analysis of Signals

现代信号谱分析

Petre Stoica, Randolph Moses, 2005

## 1 基本概念

谱估计问题的实质：对一个有限长平稳序列，估计其在整个频率域内的功率分布。

谱分析方法：

* 非参数化方法：将信号通过一个窄带滤波器，用滤波器的输出功率除以滤波器的带宽。
* 参数化方法：假定信号符合某一数学模型，将谱估计问题简化为数学模型中的参数估计问题。

离散时间信号$y(t)$的自协方差序列：$r(k) = E\{y(t) y^*(t-k)\}$

功率谱密度定义一：$\phi(\omega) = \sum^{\infty}_{k=-\infty} r(k) e^{-i \omega k}$

功率谱密度定义二：$\phi(\omega) = \lim_{N \rightarrow \infty} E\left\{\frac1N \left| \sum^N_{t=1}y(t) e^{-i \omega t} \right|^2\right\}$

假设线性系统$H(\omega)$的输入为$x(t)$，相应的输出为$y(t)$，$x(t)$的PSD和$y(t)$的PSD有关系：$\phi_y(\omega) = |H(\omega)|^2 \phi_x(\omega)$

TODO 1.6.1 相干谱

## 2 非参数化方法

### 周期图法和相关图法

由功率谱密度定义二，得到周期图法谱估计器：
$$
\hat \phi_p(\omega) = \frac1N \left| \sum^N_{t=1} y(t) e^{-i \omega t} \right|^2
$$
由功率谱密度定义一，得到相关图法谱估计器：
$$
\hat \phi_c(\omega) = \sum^{N-1}_{k=-(N-1)} \hat r(k) e^{-i \omega k}
$$
其中的$\hat r(k)$ 表示由样本$\{y(1),\cdots,y(N)\}$ 得到的自协方差序列$r(k)$ 的估值。对它有两种估计方法：

标准无偏ACS估计：
$$
\hat r(k) = \frac1{N-k} \sum^N_{t=k+1} y(t) y^*(t-k), \qquad 0 \le k \le N-1
$$
标准有偏ACS估计：
$$
\hat r(k) = \frac1N \sum^N_{t=k+1} y(t) y^*(t-k), \qquad 0 \le k \le N-1
$$
有偏ACS估计更常用，因为k很大时无偏ACS估计的结果可能不稳定。

当用标准有偏ACS估计进行计算时，$\hat \phi_c(\omega)$ 与$\hat \phi_p(\omega)$ 一致。

### 周期图法的偏差分析

$$
E\{\hat \phi_p(\omega)\} = E\{\hat \phi_c(\omega)\} = \sum^{N-1}_{k=-(N-1)} \left( 1-\frac{|k|}N \right) r(k) e^{-i \omega k}
$$

定义
$$
w_B(k) = \begin{cases} 1-\frac{|k|}N, & k=0, \pm1, \cdots, \pm(N-1) \\ 0, & else \end{cases}
$$
这称为三角形窗或Bartlett窗。于是有：
$$
E\{\hat \phi_p(\omega)\} = \frac1{2\pi} \int^\pi_{-\pi} \phi(\psi) W_B(\omega-\psi) d\psi
$$
看作**真实PSD与三角窗的卷积**。$W_B(\omega)$ 是$w_B(k)$ 的DTFT：
$$
W_B(\omega) = \frac1N\left[ \frac{\sin(\omega N / 2)}{\sin(\omega / 2)} \right]^2
$$
$W_B(\omega)$ 的主瓣宽度约为$f \simeq 1/N$ ，因此周期图法或相关图法的谱分辨率极限是1/N。

$W_B(\omega)$ 有非0的副瓣，这会导致功率扩散到功率很小或不存在功率的频段。

### 周期图法的方差分析

当$N \gg 1$ 时
$$
\lim_{N \rightarrow\infty} E\left\{ [\hat \phi(\omega_1) - \phi(\omega_1)][\hat \phi(\omega_2) - \phi(\omega_2)] \right\} = \begin{cases} \phi^2(\omega), & \omega_1 = \omega_2 \\ 0, & \omega_1 \ne \omega_2 \end{cases}
$$
可见，N很大时，周期图法的结果是不相关的随机序列，其均值和标准差都等于真实的PSD。

但是**即使N无限大，方差也不为0。**这是周期图法的主要缺点。

### Blackman-Tukey方法

BT方法是通过截短加窗的方法减小方差的
$$
\hat \phi_{BT}(\omega) = \sum^{M-1}_{k=-(M-1)} w(k) \hat r(k) e^{-i \omega k} = \hat \phi(\omega) * W(\omega)
$$
窗函数$w(k)$ 是偶函数，$M<N$ ，$w(0)=1$ ，当$|k| \ge M$ 时，$w(k) = 0$ 。

BT方法相当于对周期图法的估计结果进行“局部”加权平均。加权平均后，方差近似为$M/N$ ，分辨率近似为$1/M$ 。非矩形窗的等效时宽和等效带宽为：
$$
N_e = \frac{\sum^{M-1}_{k=-(M-1)}w(k)}{w(0)} \\ \beta_e = \frac{\frac1{2\pi} \int^\pi_{-\pi} W(\omega) d\omega}{W(0)}
$$
有时间-带宽乘积定理：
$$
N_e \beta_e = 1
$$
常见窗函数有：

| 窗名称       | 定义式                                      | 主瓣宽度(弧度) | 副瓣衰减(dB) |
| --------- | ---------------------------------------- | -------- | -------- |
| 矩形窗       | $w(k)=1$                                 | $2\pi/M$ | -13      |
| Bartlett窗 | $w(k) = 1-\frac k M$                     | $4\pi/M$ | -25      |
| Hanning窗  | $w(k) = 0.5+0.5 \cos \frac{\pi k}M$      | $4\pi/M$ | -31      |
| Hamming窗  | $w(k) = 0.54+0.46 \cos \frac{\pi k}{M-1}$ | $4\pi/M$ | -41      |
| Blackman窗 | $w(k) = 0.42+0.5 \cos \frac{\pi k}{M-1} + 0.08 \cos \frac{2\pi k}{M-1}$ | $6\pi/M$ | -57      |

此外，Chebyshev窗的副瓣具有等波纹特性。Kaiser窗逼近最优窗。

### Bartlett方法

将具有N个观测点的可用样本分平成L个子样本，每个子样本有M个观测点，对所有子样本的周期图做平均。

Bartlett方法的分辨率下降了L倍，其方差也减小了L倍。

Bartlett方法类似与采用长度为M的矩形窗的Blackman-Tukey方法，但方差稍大一些。

### Welch方法

Welch方法对Bartlett方法的改进在于：数据的分段允许重叠，每段数据计算周期图之前先加窗。

### Daniell方法

Daniell方法是对周期图法的结果做局域平均。

### Matlab中的窗函数设计

窗设计和分析工具：wintool

窗可视化工具：wvtool

设计Kaiser窗：kaiser(n, beta)，beta越大，副瓣衰减越大，主瓣宽度也越大。

设计Chebyshev窗：chebwin(n, r)，副瓣相对主瓣衰减r dB
