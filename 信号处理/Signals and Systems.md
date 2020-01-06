---
tags: [信号处理]
title: Signals and Systems
created: '2018-12-29T06:42:09.825Z'
modified: '2020-01-06T14:11:44.517Z'
---

## 一阶连续时间系统
### 微分方程形式

$$
\tau \frac{\mathrm{d} y(t)}{\mathrm{d} t} + y(t) = x(t)
$$
参数 $\tau$ 称为**时间常数**。$\tau>0$ 才有因果稳定解。
### 频率响应
$$
H(s) = \frac1{s \tau + 1}
$$
$H(0)=1$，$|H(\mathrm{j}\frac1{\tau})|=\frac1{\sqrt2}$，模单调减逼近0
### 冲击响应

$$
h(t) = \frac1\tau \mathrm{e}^{-t/\tau} u(t)
$$
$h(0)=\frac1\tau$，$h(\tau)=\frac1{\tau\mathrm{e}}$，单调减逼近0
### 阶跃响应
$$
s(t) = [1-\mathrm{e}^{-t/\tau}] u(t)
$$
$s(0)=0​$，$s(\tau)=1-\frac1{\mathrm{e}}​$，单调增逼近1
### 斜坡响应
$$
r(t) = (t - \tau + \tau e^{-t/\tau}) u(t)
$$
$r(0)=0$，$r(\tau)=\frac{\tau}{\mathrm{e}}$，$r(t) > t - \tau$，单调增逼近$t-\tau$
## 二阶连续时间系统
### 微分方程形式

$$
\frac{\mathrm{d}^2 y(t)}{\mathrm{d} t^2} + 2 \zeta \omega_n \frac{\mathrm{d} y(t)}{\mathrm{d} t} + \omega_n^2 y(t) = \omega_n^2 x(t)
$$
参数 $\zeta$ 称为**阻尼系数**，参数 $\omega_n$ 称为**自然频率** 。$\zeta>0, \omega_n>0$ 才有因果稳定解。

### 频率响应

$$
H(s) = \frac1{(s/\omega_n)^2 + 2 \zeta (s/\omega_n) + 1}
$$
$H(0)=1$，$|H(\mathrm{j}\omega_n)|=\frac1{2\zeta}$。

分母有两个根：
$$
s_{1,2} = -\zeta \pm \sqrt{\zeta^2 - 1}
$$
当 $\zeta < \frac1{\sqrt2}$ 时，$|H(\mathrm{j} \omega)|$ 在 $\omega_{max} = \omega_n \sqrt{1 - 2 \zeta^2}<\omega_n$ 处存在最大值，$|H(\mathrm{j} \omega_{max})| = \frac1{2 \zeta \sqrt{1-\zeta^2}}$ 。
当 $\zeta \ge \frac1{\sqrt2}$ 时，$|H(\mathrm{j} \omega)|$ 单调减。

![dbH](dbH.svg)

### 冲击响应

$h(0) = 0$，$h(+\infty) = 0$。

当 $\zeta > 1$ 时，有两个实数根，$h(t)$在越过最高点后单调减逼近0：
$$
h(t) = \frac{\omega_n \mathrm{e}^{-\zeta \omega_n t}}{2 \sqrt{\zeta^2 - 1}} [\mathrm{e}^{\omega_n t \sqrt{\zeta^2 - 1}} - \mathrm{e}^{-\omega_n t \sqrt{\zeta^2 - 1}}] u(t)
$$
当 $\zeta = 1$ 时， $s_1 = s_2 = -1$，$h(t)$在越过最高点后单调减逼近0：
$$
h(t) = \omega_n^2 t \mathrm{e}^{-\omega_n t} u(t)
$$
当 $0 < \zeta < 1$ 时，有两个共轭复数根，$h(t)$震荡逼近0：
$$
h(t) =  \frac{\omega_n \mathrm{e}^{-\zeta \omega_n t}}{\sqrt{1 - \zeta^2}} [\sin{(\omega_n \sqrt{1 - \zeta^2}) t}] u(t)
$$
![h](h.svg)

### 阶跃响应

当 $\zeta > 1$ 时， 有两个实数根，$s(t)$单调增逼近1：
$$
s(t) = 1 + \frac{\omega_n \mathrm{e}^{-\zeta \omega_n t}}{2 \sqrt{\zeta^2 - 1}}
\left[ \frac{\mathrm{e}^{\omega_n t \sqrt{\zeta^2 - 1}}}{-\zeta \omega_n + \omega_n \sqrt{\zeta^2 - 1}}
- \frac{\mathrm{e}^{-\omega_n t \sqrt{\zeta^2 - 1}}}{-\zeta \omega_n - \omega_n \sqrt{\zeta^2 - 1}} \right] u(t)
$$
当 $\zeta = 1$ 时， $s_1 = s_2 = -1$，$s(t)$单调增逼近1：
$$
s(t) = [1 - \mathrm{e}^{-\omega_n t} - \omega_n t \mathrm{e}^{-\omega_n t}] u(t)
$$
当 $0 < \zeta < 1$ 时，有两个共轭复数根，$s(t)$震荡逼近1：(TODO: Signals & Systems 6.41)

![s](s.svg)

### 斜坡响应(TODO)

## 一阶离散时间系统
### 差分方程形式
$$
y[n]-a y[n-1]=x[n]
$$
$|a|<1$ 时才有因果稳定解。

### 频率响应

$$
H(z) = \frac1{1 - a z^{-1}}
$$
$H(1)=\frac1{1-a}​$，$a>0​$ 时模单调减逼近$\frac1{1+a}​$ ，$a<0​$ 时模单调增逼近$\frac1{1+a}​$

### 冲击响应

$$
h[n] = a^n u[n]
$$
$h[0]=1​$，$a>0​$ 时单调减逼近0，$a<0​$ 时震荡逼近0

### 阶跃响应

$$
s[n] = \frac{1 - a^{n+1}}{1-a} u[n]
$$
$s[0]=1​$ ，$a>0​$ 时单调增逼近$\frac1{1-a}​$ ，$a<0​$ 时震荡逼近$\frac1{1-a}​$

### 斜坡响应

$$
r[n] = \left( \frac{n}{1-a} - \frac{a(1-a^{n})}{(1-a)^2} \right)u[n]
$$

$r[0] = 0$，$r[1] = 1$，$a > 0$时$r[n] > \frac{n}{1-a} - \frac{a}{(1-a)^2}$，单调增逼近$\frac{n}{1-a} - \frac{a}{(1-a)^2}$，$a < 0$时震荡逼近$\frac{n}{1-a} - \frac{a}{(1-a)^2}$

## 二阶离散时间系统

### 差分方程形式

$$
y[n] - 2 r \cos \theta y[n-1] + r^2 y[n-2] = x[n]
$$
$0<r<1, 0 \le \theta \le \pi$ 时才有因果稳定解。

### 频率响应

$$
H(z) = \frac1{1 - 2 \cos \theta (r/z) + (r/z)^2}
$$
$H(1) = \frac1{1 - 2 r\cos\theta + r^2}$，$H(-1) = \frac1{1 + 2 r\cos\theta + r^2}$

分母有两个根：
$$
z_{1,2} = r e^{\pm j \theta}
$$

当$\cos \theta \le \frac{2 r}{1+r^2}$ 时，$|H(e^{\mathrm{j} \omega})|$ 在$\cos \omega_{max} = \frac{1+r^2}{2 r} \cos \theta$ 存在最大值

![dbHz](dbHz.svg)

### 冲击响应

$$
h[n] = r^n \frac{\sin (n+1) \theta}{\sin \theta} u[n]
$$

![hz](hz.svg)

### 阶跃响应

![sz](sz.svg)

### 斜坡响应(TODO)

