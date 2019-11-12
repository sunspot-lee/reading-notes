---
tags: [通信]
title: MZ补偿
created: '2018-12-29T00:53:49.623Z'
modified: '2019-10-28T01:13:21.870Z'
---

MZ调制器的输出信号$I_{mz}$ 和$Q_{mz}$ 为：
$$
\begin{align}
I_{mz} &= \cos \phi_I + r \sin \phi_Q \\
Q_{mz} &= \cos \phi_Q - r \sin \phi_I
\end{align}
$$
其中$r$ 是消光比，$I$ 和$Q$ 是MZ调制器的输入信号：
$$
\begin{align}
\phi_I &= \frac32\pi + \frac{\pi}{V_{\pi}}I \\
\phi_Q &= \frac32\pi + \frac{\pi}{V_{\pi}}Q
\end{align}
$$

代入后有：
$$
\begin{align}
I_{mz} &= \sin \frac{\pi}{V_{\pi}}I - r\cos \frac{\pi}{V_{\pi}}Q \\
Q_{mz} &= \sin \frac{\pi}{V_{\pi}}Q + r \cos \frac{\pi}{V_{\pi}}I
\end{align}
$$
$I_{tx}$ 和$Q_{tx}$ 是发端预补偿前的信号，令：
$$
\begin{align}
\frac{\pi}{V_{\pi}}I &= \arcsin I_{tx}  \\
\frac{\pi}{V_{\pi}}Q &= \arcsin Q_{tx}
\end{align}
$$
有
$$
\begin{align}
I_{mz} &= I_{tx} - r \sqrt{1-Q_{tx}^2} \\
Q_{mz} &= Q_{tx} + r \sqrt{1-I_{tx}^2}
\end{align}
$$

* 0阶近似算法

  当$|I_{tx}| \ll 1$ 和$|Q_{tx}| \ll 1$ 时，得到：

$$
\begin{alignat}{1}
I_{mz} &\approx I_{tx} - r &= \frac\pi{V_\pi}(I - \frac{V_\pi}\pi r)\\
Q_{mz} &\approx Q_{tx} + r &= \frac\pi{V_\pi}(Q + \frac{V_\pi}\pi r)
\end{alignat}
$$

​	实现时首先在DSP中做补偿使得MZ调制器的输入信号为：
$$
\begin{align}
I &= \frac{V_{\pi}}{\pi} \arcsin I_{tx} \\
Q &= \frac{V_{\pi}}{\pi} \arcsin Q_{tx}
\end{align}
$$
​	然后在MZ调制器入口处再做补偿：
$$
\begin{align}
I' &= I + \frac{V_\pi}\pi r \\
Q' &= Q - \frac{V_\pi}\pi r
\end{align}
$$


* 3阶近似算法

  当$|I_{tx}|$ 和$|Q_{tx}|$ 都**小于1**时，得到：

$$
\begin{alignat}{1}
I_{mz} &\approx I_{tx} - r(1-\frac12Q_{tx}^2) &= I_{tx} + \frac12 r Q_{tx}^2 - r \\
Q_{mz} &\approx Q_{tx} + r(1-\frac12I_{tx}^2) &= Q_{tx} - \frac12 r I_{tx}^2 + r
\end{alignat}
$$

​	实现时除了0阶近似算法采用的预补偿之外，还要在发端预补偿之前做变换：
$$
\begin{align}
I_{tx}' &= I_{tx} - \frac12 r Q_{tx}^2 \\
Q_{tx}' &= Q_{tx} + \frac12 r I_{tx}^2
\end{align}
$$
​	然后对$I_{tx}'$ 和$Q_{tx}'$ 作$arcsin$ 映射。

