MZ调制器的输出信号$I_{mz}$ 和$Q_{mz}$ 为：
$$
I_{mz} = \cos \phi_I + r \sin \phi_Q \\
Q_{mz} = \cos \phi_Q - r \sin \phi_I
$$
其中$r$ 是消光比，$I$ 和$Q$ 是MZ调制器的输入信号：
$$
\phi_I = \frac32\pi + \frac{I}{V_{\pi/2}}\frac\pi2 \\
\phi_Q = \frac32\pi + \frac{Q}{V_{\pi/2}}\frac\pi2
$$

代入后有：
$$
I_{mz} = \sin \frac{I}{V_{\pi/2}}\frac\pi2 - r\cos\frac{Q}{V_{\pi/2}}\frac\pi2 \\
Q_{mz} = \sin \frac{Q}{V_{\pi/2}}\frac\pi2 + r \cos\frac{I}{V_{\pi/2}}\frac\pi2
$$
$I_{tx}$ 和$Q_{tx}$ 是发端预补偿前的信号，令：
$$
\frac{I}{V_{\pi/2}} = \frac2\pi \arcsin I_{tx}  \\
\frac{Q}{V_{\pi/2}} = \frac2\pi \arcsin Q_{tx}
$$
有
$$
I_{mz} = I_{tx} - r \sqrt{1-Q_{tx}^2} \\
Q_{mz} = Q_{tx} + r \sqrt{1-I_{tx}^2}
$$

* 0阶近似算法

  当$|I_{tx}| \ll 1$ 和$|Q_{tx}| \ll 1$ 时，得到：

$$
I_{mz} \approx I_{tx} - r = \frac\pi{V_\pi}(I - \frac{V_\pi}\pi r)\\
Q_{mz} \approx Q_{tx} + r = \frac\pi{V_\pi}(Q + \frac{V_\pi}\pi r)
$$

​	实现时在MZ调制器入口处进行补偿：
$$
I \rightarrow I + \frac{V_\pi}\pi r \\
Q \rightarrow Q - \frac{V_\pi}\pi r
$$


* 3阶近似算法

  当$|I_{tx}|$ 和$|Q_{tx}|$ 都**小于1**时，得到：

$$
I_{mz} \approx I_{tx} - r(1-\frac12Q_{tx}^2) = I_{tx} + \frac12 r Q_{tx}^2 - r \\
Q_{mz} \approx Q_{tx} + r(1-\frac12I_{tx}^2) = Q_{tx} - \frac12 r I_{tx}^2 + r
$$

​	实现时除了0阶近似算法采用的预补偿之外，还要在发端预补偿之前做变换：
$$
I_{tx}' = I_{tx} - \frac12 r Q_{tx}^2 \\
Q_{tx}' = Q_{tx} + \frac12 r I_{tx}^2
$$
​	然后对$I_{tx}'$ 和$Q_{tx}'$ 作$arcsin$ 映射。

