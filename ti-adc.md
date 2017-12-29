对理想ADC：

* 输入$x(t)$，Fourier变换为$X(j\omega)$

* 采样频率$f_s$

* 输出$y(t)$，Fourier变换为
  $$
  Y(j\omega)=f_s \sum_{k=-\infty}^\infty X(j(\omega-k\omega_s))
  $$





对TI-ADC的第i个子ADC：$i \in [0,M-1]$

* 输入$x_i(t)=h_i(t) * x(t+i T_s) + O_i$，Fourier变换为
  $$
  X_i(j\omega) = H_i(j\omega) X(j\omega) e^{j \omega i T_s} + O_i \delta(j\omega)
  $$

* 采样频率$f_s/M$

* 输出$y_i(t)$，Fourier变换为
  $$
  Y_i(j\omega) = \frac{f_s}M \sum_{k=-\infty}^\infty X_i(j(\omega-\frac{k}M\omega_s))
  $$





对TI-ADC整体：

* 输出$y(t)=\sum_{i=0}^{M-1} y_i(t-i T_s)$，Fourier变换为
  $$
  Y(j\omega) = \sum_{i=0}^{M-1} Y_i(j\omega) e^{-j \omega i T_s}
  $$
  代入，得到
  $$
  \begin{align}
  Y(j\omega) &= \frac{f_s}M \sum_{i=0}^{M-1} \sum_{k=-\infty}^\infty \left( H_i(j(\omega-\frac{k}M\omega_s)) X(j(\omega-\frac{k}M\omega_s)) e^{-j \frac{k i}M \omega} \right) \\
  &+ \frac{f_s}M \sum_{i=0}^{M-1} \sum_{k=-\infty}^\infty \left( O_i \delta(j(\omega-\frac{k}M\omega_s)) \right) e^{-j \omega i T_s}
  \end{align}
  $$

* 理想情况下，$H_i=1$，$O_i=0$
  $$
  Y(j\omega) = f_s \sum_{k=-\infty}^\infty \left( \frac1M \sum_{i=0}^{M-1}e^{-j \frac{k i}M\omega} \right) X(j(\omega-\frac{k}M\omega_s))
  $$
  只有当k是M的整数倍时，括号中的求和子式才为1，否则为0，所以
  $$
  Y(j\omega) = f_s \sum_{k=-\infty}^\infty X(j(\omega-k\omega_s))
  $$
  正好等于理想ADC的输出

* 当子ADC存在时偏$\delta_i=r_i T_s$时，$H_i(j\omega)=e^{-j \omega r_i T_s}$，$O_i=0$
  $$
  Y(f) = \frac{f_s}M \sum_{k=-\infty}^\infty X(f-k\frac{f_s}M) \sum_{i=0}^{M-1} \left( e^{-j 2\pi f \delta_i} e^{-j 2\pi i k / M} \right)
  $$
  对带限信号，仅当$0 \le k \le M-1$时非零

