## 0 准备

假设$A_m$是数据符号，$h(t)$是信道冲击响应，收到的信号可表示为：
$$
x(t) = \sum_m A_m h(t-mT_b)
$$
假设在时刻$t=kT_b+\tau_k$处采样：
$$
x_k = x(kT_b+\tau_k) = \sum_m A_m h[(k-m)T_b+\tau_k] = \sum_i A_{k-i} h(iT_b+\tau_k)
$$

## 1 Mueller-Muller 检相器

求期望1：
$$
E[x_k A_{k-1}] \approx A^2 h(\tau_k+T_b)
$$
求期望2：
$$
E[x_{k-1} A_k] \approx A^2 h(\tau_k-T_b)
$$

然后求差：
$$
E[x_k A_{k-1}] - E[x_{k-1} A_k] \approx A^2 [h(\tau_k+T_b) - h(\tau_k-T_b)]
$$
如果差值>0，则采样位置太早，$\tau_k$应该增大；如果差值<0，则采样位置太迟，$\tau_k$应该减小。

缺点：要求$h(t)$是对称的。

[Mueller and Muller][1]，[Balan][2]

## 2 MMSE 检相器

求误差的均方：
$$
E_k = E[e_k^2] = E[(x(kT_b+\tau_k) - A_k)^2]
$$
然后求微分：
$$
\frac{\delta E_k}{\delta \tau_k} = 2 E[e_k \frac{\delta x(kT_b+\tau_k)}{\delta \tau_k}]
$$




[1] K. Mueller and M. Muller,“Timing Recovery in Digital Synchronous Data Receivers”

[2] V. Balan et. al,“A 4.8-6.4-Gb/sSerial Link for Backplane Applications Using Decision
Feedback Equalization"
