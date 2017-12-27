对理想ADC：

* 输入$x(t)$，Fourier变换为$X(f)$

* 采样频率$f_s$

* 输出$y(t)$，Fourier变换为
  $$
  Y(f)=f_s \sum_{k=-\infty}^\infty X(f-k f_s)
  $$



对TI-ADC的第i个子ADC：$i \in [0,M-1]$

* 输入$x_i(t)=h_i(t) * x(t+i/f_s) + O_i$，Fourier变换为
  $$
  X_i(f)=H_i(f) X(f)e^{j 2\pi i f/f_s} + O_i \delta(f)
  $$

* 采样周期$f_s/M$

* 输出$y_i(t)$，Fourier变换为
  $$
  Y_i(f) = \frac{f_s}M \sum_{k=-\infty}^\infty X_i(f-k \frac{f_s}M)
  $$



对TI-ADC整体：

* 输出$y(t)=\sum_{i=0}^{M-1} y_i(t-i/f_s)$，Fourier变换为
  $$
  Y(f) = \sum_{i=0}^{M-1} Y_i(f) e^{-j 2\pi i f/f_s}
  $$
  代入，得到
  $$
  \begin{align}
  Y(f) &= \frac{f_s}M \sum_{i=0}^{M-1} \sum_{k=-\infty}^\infty \left( H_i(f-k\frac{f_s}M) X(f-k\frac{f_s}M) e^{-j 2\pi i k / M} \right) \\
  &+ \frac{f_s}M \sum_{i=0}^{M-1} \sum_{k=-\infty}^\infty \left( O_i \delta(f-k\frac{f_s}M) e^{-j 2\pi i f / f_s} \right)
  \end{align}
  $$

* 理想情况下，$H_i=1$，$O_i=0$
  $$
  Y(f) = f_s \sum_{k=-\infty}^\infty \left( \frac1M \sum_{i=0}^{M-1}e^{-j 2\pi i k / M} \right) X(f-k\frac{f_s}M)
  $$
  只有当k是M的整数倍时，括号中的求和子式才为1，否则为0，所以
  $$
  Y(f) = f_s \sum_{k=-\infty}^\infty X(f - k f_s)
  $$
  正好等于理想ADC的特性

* 当子ADC存在时偏$\delta_i=r_i / f_s$时，$H_i(f)=e^{-j 2\pi f \delta_i}$，$O_i=0$
  $$
  Y(f) = \frac{f_s}M \sum_{i=0}^{M-1} \sum_{k=-\infty}^\infty \left( X(f-k\frac{f_s}M) e^{-j 2\pi f \delta_i} e^{-j 2\pi i k / M} \right)
  $$
  对带限信号，仅当$0 \le k \le M-1$时非零

