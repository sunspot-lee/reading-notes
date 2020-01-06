---
tags: [数学]
title: 'Probability, random variables, and stochastic processes'
created: '2020-01-04T01:41:15.885Z'
modified: '2020-01-04T01:41:18.436Z'
---

# Probability, random variables, and stochastic processes

## 常用随机变量

### 正态分布

PDF
$$
f(x)=N(\mu,\sigma^2)=\frac1{\sqrt{2\pi\sigma^2}} e^{-(x-\mu)^2/2\sigma^2}
$$
当N趋于无穷时，N个独立同分布随机变量的平均值服从正态分布

### 指数分布

PDF
$$
f(x)=\begin{cases}\lambda e^{-\lambda x} & x \ge 0 \\0 & \text{else}\end{cases}
$$
CDF
$$
F(x)=1-e^{-\lambda x}
$$
