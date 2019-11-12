---
tags: [Matlab]
title: Matlab 信号处理工具箱
created: '2019-10-28T01:09:13.208Z'
modified: '2019-10-28T01:09:36.622Z'
---

# Signal Processing Toolbox

Matlab 2017b

## APP

* Signal Analyzer : signalAnalyzer(sig, ...)
* Filter Designer
* Window Designer

## 信号生成与预处理

### 平滑和去噪

| 函数           | 含义                                       |
| ------------ | ---------------------------------------- |
| detrend      | 去除线性趋势。**来自Matlab**                      |
| fillgaps     | 去除NaN。用插值代替。**可画图**                      |
| fillmissing  | 补充丢失的数据，多种方法。**来自Matlab**                |
| filloutliers | 去除异常点，多种方法。**来自Matlab**                  |
| hampel       | 去除异常点。在邻域内求中值和标准差，如果当前值偏离中值n倍标准差，就用中值代替。**可画图** |
| isoutlier    | 搜索异常点，多种方法。**来自Matlab**                  |
| medfilt1     | 求局部中值。                                   |
| movmad       | 求中值偏离(MAD)。求当前值与邻域内中值之差的绝对值。**来自Matlab** |
| movmedian    | 求局部中值。**来自Matlab**                       |
| sgolay       | 设计Savitzky-Golay 滤波器。                    |
| sgolayfilt   | Savitzky-Golay 滤波。在邻域内做多项式最小二乘拟合，求拟合多项式在当前点的值。 |
| smoothdata   | 平滑有噪数据，多种方法。**来自Matlab**                 |

### 重采样

| 函数         | 含义                                     |
| ---------- | -------------------------------------- |
| upsample   | 升采样。插0。                                |
| downsample | 降采样。n取1。                               |
| interp     | 升采样。先插0，然后低通滤波。                        |
| decimate   | 降采样。先低通滤波，然后n取1。                       |
| resample   | 重采样均匀或非均匀数据。用firls设计滤波器，然后调用upfirdn。   |
| upfirdn    | 插0升采样，FIR 滤波，然后降采样。                    |
| interp1    | 插值，多种方法。**来自Matlab**                   |
| pchip      | 三次Hermite 插值。一阶导连续，插值区间单调。**来自Matlab** |
| spline     | 三次样条插值。二阶导连续。**来自Matlab**              |

### 波形生成

| 函数          | 含义                                       |
| ----------- | ---------------------------------------- |
| tripuls     | 三角脉冲                                     |
| sawtooth    | 锯齿波                                      |
| rectpuls    | 矩形脉冲                                     |
| square      | 方波                                       |
| sinc        | sinc 函数                                  |
| diric       | Dirichlet 函数，或周期sinc 函数                  |
| gauspuls    | Gaussian 调制正弦脉冲                          |
| gmonopuls   | Gaussian 单脉冲                             |
| pulstran    | 周期重复的脉冲信号                                |
| chirp       | 变频余弦信号                                   |
| vco         | 压控振荡器。变频余弦信号                             |
| uencode     | ADC。把[-1,+1]区间的浮点数转换为n bit 整数            |
| udecode     | DAC。把n bit 整数转换为[-1,+1]区间的浮点数            |
| modulate    | 调制。支持多种调制方式，只支持实数信号                      |
| demod       | 解调。支持多种调制方式，只支持实数信号                      |
| buffer      | 缓存区。把向量转换为矩阵，矩阵相邻列允许数据重复或跳过              |
| shiftdata   | 移动数据维度                                   |
| unshiftdata | 恢复数据维度                                   |
| strips      | **画折叠图**                                 |
| marcumq     | 广义Marcum Q 函数。$Q(a,b) = \int_b^{\infty} x \exp(-\frac{x^2+a^2}2) I_0(a x) dx$ |

## 测量与特征提取

### 描述性统计

| 函数            | 含义                                 |
| ------------- | ---------------------------------- |
| rms           | 均方根。平方，均值，开方                       |
| rssq          | 和方根。平方，和，开方                        |
| peak2peak     | 最大值与最小值之差                          |
| peak2rms      | 最大值与RMS之比                          |
| seqperiod     | 求周期                                |
| cummax        | 累积性最大值                             |
| cummin        | 累积性最小值                             |
| envelope      | 信号的上下包络。**可画图**                    |
| finddelay     | 求信号间的延迟                            |
| alignsignals  | 信号对齐                               |
| dtw           | 用动态时间尺度，求两个信号的Euclidean 距离。**可画图** |
| edr           | 用动态时间尺度，求两个信号的编辑距离。**可画图**         |
| findsignal    | 寻找相似信号区间。**可画图**                   |
| cusum         | 检测偏离均值的点。**可画图**                   |
| findchangepts | 信号分段。**可画图**                       |
| findpeaks     | 寻找局部最大值。**可画图**                    |

### 脉冲和过渡测度

| 函数           | 含义                |
| ------------ | ----------------- |
| dutycycle    | 占空比。**可画图**       |
| pulseperiod  | 二值脉冲周期。**可画图**    |
| pulsesep     | 二值脉冲间隔。**可画图**    |
| pulsewidth   | 二值脉冲宽度。**可画图**    |
| midcross     | 二值波形中值点。**可画图**   |
| statelevels  | 二值波形取值统计。**可画图**  |
| risetime     | 二值波形上升时间。**可画图**  |
| falltime     | 二值波形下降时间。**可画图**  |
| overshoot    | 二值波形最大上过冲。**可画图** |
| undershoot   | 二值波形最大下过冲。**可画图** |
| settlingtime | 二值波形稳定时间。**可画图**  |
| slewrate     | 二值波形边沿斜率。**可画图**  |

### 谱测量

功率和带宽

| 函数        | 含义                    |
| --------- | --------------------- |
| bandpower | 平均功率或带内平均功率。          |
| enbw      | 等价噪声带宽。用来描述窗函数。       |
| meanfreq  | 平均频率。**可画图**          |
| medfreq   | 中间频率。**可画图**          |
| obw       | 占用带宽。99%功率带宽。**可画图**  |
| powerbw   | 功率带宽。3 dB功率带宽。**可画图** |

畸变

非线性系统输入频率$f$的正弦信号后会输出频率$f$的基波以及频率为$n f$的谐波，输入频率为$f_1$和$f_2$的双频正弦信号后还会输出频率$f_1 \pm f_2$的2阶互调信号、频率$f_1 \pm 2 f_2$和$2 f_1 \pm f_2$的3阶互调信号以及更高阶的互调信号，其中3阶互调信号的频率理基波最近。

| 函数    | 含义                                  |
| ----- | ----------------------------------- |
| sfdr  | 无“毛刺”动态范围。基波功率与最强谐波功率之比(dB)。**可画图** |
| sinad | 信号噪声畸变比。基波功率与噪声+谐波功率之比(dB)。**可画图**  |
| snr   | 信噪比。基波功率与噪声功率之比(dB)。**可画图**         |
| thd   | 总谐波畸变。谐波功率与基波功率之比(dB)。**可画图**       |
| toi   | 三阶截点。最大线性输入功率。**可画图**               |

## 相关和卷积

| 函数       | 含义                            |
| -------- | ----------------------------- |
| cov      | 协方差。减均值，相关。**来自Matlab**       |
| corrcoef | 相关系数。减均值，除标准差，相关。**来自Matlab** |
| xcorr    | 互相关。滑动，相关                     |
| xcov     | 互协方差。减均值，滑动，相关                |
| xcorr2   | 2D互相关                         |
| corrmtx  | 自相关矩阵。把序列的自相关转换为自相关矩阵转置自乘     |
| conv     | 卷积或多项式乘。**来自Matlab**          |
| deconv   | 逆卷积或多项式除。**来自Matlab**         |
| conv2    | 2D卷积。**来自Matlab**             |
| cconv    | 循环卷积                          |
| convmtx  | 卷积矩阵。把两个序列的卷积转换为卷积矩阵乘向量       |

## 数字和模拟滤波器

### 数字滤波器设计

| 函数            | 含义                                       |
| ------------- | ---------------------------------------- |
| designfilt    | 设计或编辑滤波器                                 |
| digitalFilter | designfilt的设计结果或编辑对象                     |
| polyscale     | 在Z平面上缩放多项式的根                             |
| polystab      | 在Z平面上把多项式在单位圆外的根映射到单位圆内。处理后滤波器的幅度响应不变，线性相位特性变为最小相位特性 |
| dspfwiz       | 打开带“Realize Model”面板的Filter Designer     |
| filt2block    | 生成Simulink滤波器模块                          |

### 数字滤波器分析

| 函数         | 含义                         |
| ---------- | -------------------------- |
| fvtool     | 滤波器可视化工具                   |
| freqz      | 频率响应(幅度+相位)。**可画图**        |
| phasez     | 频率响应(相位)。**可画图**           |
| unwrap     | 平滑相位响应                     |
| zerophase  | 频率响应(相位平滑后的幅度)。**可画图**     |
| phasedelay | 相延迟。**可画图**                |
| grpdelay   | 群延迟。**可画图**                |
| zplane     | **画零极点图**                  |
| impz       | 冲击响应。**可画图**               |
| impzlength | 冲击响应长度                     |
| stepz      | 阶跃响应。**可画图**               |
| info       | 数字滤波器信息                    |
| filtord    | 阶数                         |
| filternorm | 2阶模或无穷阶模。相当于白噪声放大系数和直流放大系数 |
| firtype    | FIR滤波器类型。有4种               |
| isallpass  | 是不是全通滤波器                   |
| isfir      | 是不是FIR滤波器                  |
| islinphase | 是不是线性相位的                   |
| ismaxphase | 是不是最大相位的                   |
| isminphase | 是不是最小相位的                   |
| isstable   | 是不是稳定的。所有极点在单位圆上或单位圆外      |

### 数字滤波

| 函数         | 含义                          |
| ---------- | --------------------------- |
| fftfilt    | 基于FFT的FIR滤波                 |
| filter     | 滤波。**来自Matlab**             |
| filter2    | 2维FIR滤波。**来自Matlab**        |
| filtfilt   | 0相位滤波。先正向滤波，再反向滤波           |
| filtic     | 根据历史输入和输出，计算转置直2型滤波器实现的初始状态 |
| latcfilt   | 用格型滤波器滤波                    |
| residuez   | Z变换有理多项式和部分分式展开形式之间互相转换     |
| eqtflength | 平衡传输函数分子和分母的长度              |
| tf         | 数字滤波器对象转换为传输函数形式            |
| ss         | 数字滤波器对象转换为状态空间形式            |
| zpk        | 数字滤波器对象转换为零点-极点-增益形式        |
| sos2cell   |                             |
| cell2sos   |                             |
| sos2ss     |                             |
| ss2sos     |                             |
| sos2tf     |                             |
| tf2sos     |                             |
| sos2zp     |                             |
| zp2sos     |                             |
| ss2tf      |                             |
| tf2ss      |                             |
| ss2zp      |                             |
| zp2ss      |                             |
| tf2latc    |                             |
| latc2tf    |                             |
| tf2zp      |                             |
| zp2tf      |                             |
| tf2zpk     |                             |

### 模拟滤波器

| 函数        | 含义                |
| --------- | ----------------- |
| freqs     | 频率响应。**可画图**      |
| freqspace | 频率空间。**来自Matlab** |

## 变换

### 离散Fourier和余弦变换

| 函数       | 含义                                    |
| -------- | ------------------------------------- |
| dftmtx   | 离散Fourier变换矩阵                         |
| czt      | Chirp Z变换                             |
| goertzel | 用2阶Goertzel算法做离散Fourier变换。可以只计算指定频点的值 |
| dct      | 离散余弦变换                                |
| idct     | 离散余弦逆变换                               |

### Hilbert和Walsh-Hadamard变换

| 函数      | 含义                                       |
| ------- | ---------------------------------------- |
| fwht    | 快速Walsh-Hadamard变换                       |
| ifwht   | 快速Walsh-Hadamard逆变换                      |
| hilbert | 求实信号的分析信号。分析信号有单边带频谱，其实部为原实信号，虚部为其Hilbert变换。 |

### 倒频谱分析

| 函数     | 含义   |
| ------ | ---- |
| cceps  |      |
| icceps |      |
| recps  |      |

### Bit倒序

| 函数            | 含义   |
| ------------- | ---- |
| bitrevorder   |      |
| digitrevorder |      |

## 谱分析

| 函数     | 含义   |
| ------ | ---- |
| db     |      |
| db2mag |      |
| db2pow |      |
| mag2db |      |
| pow2db |      |

### 谱估计(略)

### 时-频分析(略)

### 参数谱估计(略)

### 子空间法(略)

### 窗(略)

### 谱测量

#### 功率和带宽(略)

#### 畸变测量(略)

## 信号建模

### 自回归和滑动平均模型(略)

### 线性预测编码(略)

## 震动分析

### 旋转机械(略)

### 模态分析(略)

### 疲劳分析(略)
