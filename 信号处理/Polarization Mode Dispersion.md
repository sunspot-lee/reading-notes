1. PMD现象源于光纤中不同位置的双折射效应的随机变化。

2. 光的极化态可以用2D Jones矢量描述

$$
|s\rangle = \left( \begin{matrix} s_x \\ s_y \end{matrix} \right)
$$

3. 经过一段光纤后，光的极化态变为$|t\rangle = T |s\rangle$ 。
4. T称为光纤的传输矩阵，T描述了光纤的双折射特性。提取公共相位后，得到Jones矩阵U，$T = e^{-j\phi_0} U$ ，$det U = 1$ 。
5. 光的极化态也可以用Stokes矢量描述

$$
\begin{array} \\
\hat s &= (s_1, s_2, s_3) \\
s_1 &= s_x s_x^* - s_y s_y^* \\
s_2 &= s_x s_y^* + s_x^* s_y \\
s_3 &= j(s_x s_y^* - s_x^* s_y) \\
\end{array}
$$

5. 经过一段光纤后，光的极化态变为$\hat t = R \hat s$ 。
6. R称为光纤的旋转矩阵，R描述了光纤的双折射特性。
7. 定义Pauli旋转矩阵

$$
\begin{array} \quad \overrightarrow \sigma &= (\sigma_1, \sigma_2, \sigma_3) \\
\sigma_1 &= \left( \begin{matrix} 1 & 0 \\ 0 & -1 \end{matrix} \right) \\
\sigma_2 &= \left( \begin{matrix} 0 & 1 \\ 1 & 0 \end{matrix} \right) \\
\sigma_3 &= \left( \begin{matrix} 0 & -j \\ j & 0 \end{matrix} \right) \end{array}
$$

8. 利用Pauli旋转矩阵可以定义Stokes矢量和Jones矢量之间的转换关系
   $$
   \hat s = \langle s | \overrightarrow \sigma | s \rangle \\
   s_i = \langle s | \sigma_i | s \rangle
   $$

9. 利用Pauli旋转矩阵可以定义R和U之间的转换关系

$$
R \overrightarrow \sigma = U^\dagger \overrightarrow \sigma U \\
R_{i1} \sigma_1 + R_{i2} \sigma_2 + R_{i3} \sigma_3 = U^\dagger \sigma_i U
$$

7. 用Stokes矢量描述时，所有的极化态矢量都落在一个3D的单位球面上，这称为Poincaré球面。
8. Poincaré球面上的极化态矢量，赤道上是线极化，两极上是圆极化，其它位置上都是椭圆极化，其长轴方向等于同经度赤道上的线极化方向。
9. 一般情况下，随着频率的变化，相同极化态的入射光得到**不同**极化态的出射光，并且有**不同**的平均时延。
10. 但对每个频率，都存在特殊的一对入射极化态$PSP_s$和对应的一对出射极化态$PSP_t$。在这个频率附近，$PSP_s$极化态的入射光得到$PSP_t$极化态的出射光，与频率的一次幂无关，并且有**最大或最小**的平均时延。
11. 两个PSP极化态光的时延的差称为DGD。PSP保持有效的频率范围称为PSP的带宽。没有PDL时，两个PSP之间是正交的。
12. 光纤的双折射特性也可以用PMD矢量来描述。PMD矢量是一个Stokes矢量，$\tau = \Delta\tau \hat p$ ，它的方向指向慢PSP的方向$\hat p$ ，它的长度等于DGD值$\Delta\tau$ 。PMD矢量在入射端表示为$\tau_s$ ，在出射端表示为$\tau_t$ 。$\tau_t = R \tau_s$ 。
13. 在频域对公式$\hat t = R \hat s$ 求导，得到$\hat t_\omega = \tau_t \times \hat t$ ，其中$\tau_t \times = R_\omega R^T$ 。
14. 在Poincaré球面上，随着频率的变化，出射光的极化态$\hat t$ 将绕着出射PMD矢量$\tau_t$ 旋转。当入射光的极化态$\hat s$ 与入射PMD矢量$\tau_s$ 同向或反向，出射光的极化态$\hat t$ 旋转的速度最快。
15. 如果有两段光纤，旋转矩阵分别为$R_1$ 和$R_2$ ，PMD矢量分别为$\tau_1$ 和$\tau_2$ 。把它们连接后的总入射PMD矢量和总出射PMD矢量为

$$
\tau_s = \tau_{1s} + R_1^T \tau_{2s} \\
\tau_t = R_2 \tau_{1t} + \tau_{2t}
$$

16. 也可以直接用U来求DGD
    $$
    \tau = 2 \sqrt{det U_\omega}
    $$
    ​
