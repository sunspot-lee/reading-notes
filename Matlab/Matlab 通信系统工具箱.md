# Communications System Toolbox

Matlab 2017b

## APP

BER Analyzer : bertool

## 端到端仿真

### 信源和信宿

| System Object              | 含义           |
| -------------------------- | ------------ |
| comm.GoldSequence          | 有很好的互相关特性    |
| comm.KasamiSequence        |              |
| comm.PNSequence            |              |
| comm.BarkerCode            | 常用于同步，有低相关旁瓣 |
| comm.HadamardCode          | 常用于扩频，码间不相关  |
| comm.WalshCode             |              |
| comm.RBDSWaveformGenerator |              |
| comm.BasebandFileReader    |              |
| comm.BasebandFileWriter    |              |
| comm.ConstellationDiagram  | 画星座图         |
| comm.EyeDiagram            | 画眼图          |

| 函数                     | 含义                     |
| ---------------------- | ---------------------- |
| randi                  | 均匀分布伪随机整数。**来自Matlab** |
| randerr                | 生成bit错误模式              |
| randsrc                | 生成随机“字母”矩阵             |
| commsrc.combinedjitter | 组合Jitter生成器            |
| commsrc.pattern        |                        |
| commsrc.pn             |                        |
| lteZadoffChuSeq        |                        |
| mask2shift             |                        |
| shift2mask             |                        |
| wgn                    |                        |
| biterr                 |                        |
| symerr                 |                        |
| eyediagram             |                        |
| scatterplot            |                        |

### 信源编码

| System Object            | 含义   |
| ------------------------ | ---- |
| comm.DifferentialEncoder |      |
| comm.DifferentialDecoder |      |

| 函数          | 含义                  |
| ----------- | ------------------- |
| quantiz     | 量化模拟信号，用分割和码表       |
| lloyds      | 训练最佳量化参数，Lloyd算法    |
| dpcmenco    | DPCM编码，用分割、码表和线性预测器 |
| dpcmdeco    | DPCM解码              |
| dpcmopt     | 训练最佳DPCM编码参数        |
| compand     | $\mu$率或A率对数压缩或展开    |
| huffmanenco | Huffman码编码          |
| huffmandeco | Huffman码解码          |
| huffmandict |                     |
| arithenco   | 算数码编码               |
| arithdeco   | 算数码解码               |

### 检错和纠错

#### CRC码

| System Object       | 含义        |
| ------------------- | --------- |
| comm.CRCGenerator   | CRC码      |
| comm.CRCDetector    |           |
| comm.HDLCRGenerator | HDL优化CRC码 |
| comm.HDLCRDetector  |           |

#### 分组码

| System Object        | 含义                   |
| -------------------- | -------------------- |
| comm.BCHEncoder      | BCH码编码               |
| comm.BCHDecoder      | BCH码解码               |
| comm.RSEncoder       | Reed-Solomon码编码      |
| comm.RSDecoder       | Reed-Solomon码解码      |
| comm.HDLRSEncoder    | HDL优化Reed-Solomon码编码 |
| comm.HDLRSDecoder    | HDL优化Reed-Solomon码解码 |
| comm.LDPCEncoder     | LDPC码编码              |
| comm.LDPCDecoder     | LDPC码解码              |
| comm.gpu.LDPCDecoder |                      |

| 函数              | 含义   |
| --------------- | ---- |
| cyclgen         |      |
| cyclpoly        |      |
| encode          |      |
| decode          |      |
| gfweight        |      |
| gen2par         |      |
| hammgen         |      |
| syndtable       |      |
| bchenc          |      |
| bchdec          |      |
| bchgenpoly      |      |
| bchnumerr       |      |
| rsenc           |      |
| rsdec           |      |
| rsgenpoly       |      |
| rsgenpolycoeffs |      |
| dvbs2ldpc       |      |

#### 卷积码

| System Object                 | 含义              |
| ----------------------------- | --------------- |
| comm.ConvolutionalEncoder     | 卷积码编码           |
| comm.gpu.ConvolutionalEncoder |                 |
| comm.ViterbiDecoder           | 卷积码解码，Viterbi算法 |
| comm.gpu.ViterbiDecoder       |                 |
| comm.APPDecoder               | 卷积码解码，APP算法     |
| comm.TurboEncoder             | Turbo码编码        |
| comm.TurboDecoder             | Turbo码解码        |
| comm.gpu.TurboDecoder         |                 |

| 函数             | 含义   |
| -------------- | ---- |
| convenc        |      |
| distspec       |      |
| iscatastrophic |      |
| istrellis      |      |
| oct2dec        |      |
| poly2trellis   |      |
| vitdec         |      |

#### Galois域(略)

### 信号操作

| System Object    | 含义   |
| ---------------- | ---- |
| comm.Scrambler   | 加扰   |
| comm.Descrambler | 解扰   |

| 函数       | 含义        |
| -------- | --------- |
| bi2de    |           |
| de2bi    |           |
| hex2poly |           |
| oct2poly |           |
| bin2gray |           |
| gray2bin |           |
| vec2mat  | 向量转矩阵，行优先 |

### 交织(略)

### 调制

#### 数字基带调制

##### 幅度调制

| System Object                  | 含义    |
| ------------------------------ | ----- |
| comm.GeneralQAMModulator       | 任意QAM |
| comm.GeneralQAMDemodulator     |       |
| comm.RectangularQAMModulator   | 矩形QAM |
| comm.RectangularQAMDemodulator |       |
| comm.PAMModulator              | PAM   |
| comm.PAMDemodulator            |       |

| 函数          | 含义   |
| ----------- | ---- |
| genqammod   |      |
| genqamdemod |      |
| pammod      |      |
| pamdemod    |      |
| qammod      |      |
| qamdemod    |      |

##### 连续相位调制

| System Object         | 含义    |
| --------------------- | ----- |
| comm.CPFSKModulator   | CPFSK |
| comm.CPFSKDemodulator |       |
| comm.CPMModulator     | CPM   |
| comm.CPMDemodulator   |       |
| comm.MSKModulator     | MSK   |
| comm.MSKDemodulator   |       |
| comm.GMSKModulator    | GMSK  |
| comm.GMSKDemodulator  |       |

| 函数       | 含义   |
| -------- | ---- |
| mskmod   |      |
| mskdemod |      |

##### 频率调制

| System Object       | 含义   |
| ------------------- | ---- |
| comm.FSKModulator   | FSK  |
| comm.FSKDemodulator |      |

| 函数       | 含义   |
| -------- | ---- |
| fskmod   |      |
| fskdemod |      |

##### OFDM调制

| System Object        | 含义   |
| -------------------- | ---- |
| comm.OFDMModulator   | OFDM |
| comm.OFDMDemodulator |      |

##### 相位调制

| System Object           | 含义    |
| ----------------------- | ----- |
| comm.BPSKModulator      | BPSK  |
| comm.BPSKDemodulator    |       |
| comm.DBPSKModulator     | DBPSK |
| comm.DBPSKDemodulator   |       |
| comm.DPSKModulator      | DPSK  |
| comm.DPSKDemodulator    |       |
| comm.DQPSKModulator     | DQPSK |
| comm.DQPSKDemodulator   |       |
| comm.OQPSKModulator     | OQPSK |
| comm.OQPSKDemodulator   |       |
| comm.PSKModulator       | PSK   |
| comm.gup.PSKModulator   |       |
| comm.PSKDemodulator     |       |
| comm.gpu.PSKDemodulator |       |
| comm.QPSKModulator      | QPSK  |
| comm.QPSKDemodulator    |       |

| 函数         | 含义   |
| ---------- | ---- |
| dpskmod    |      |
| dpskdemod  |      |
| modnorm    |      |
| oqpskmod   |      |
| oqpskdemod |      |
| pskmod     |      |
| pskdemod   |      |

##### 网格编码调制

| System Object                     | 含义   |
| --------------------------------- | ---- |
| comm.GeneralQAMTCMModulator       |      |
| comm.GeneralQAMTCMDemodulator     |      |
| comm.RectangularQAMTCMModulator   |      |
| comm.RectangularQAMTCMDemodulator |      |
| comm.PSKTCMModulator              |      |
| comm.PSKTCMDemodulator            |      |

#### 模拟基带调制

| System Object               | 含义   |
| --------------------------- | ---- |
| comm.FMBroadcastModulator   |      |
| comm.FMBroadcastDemodulator |      |
| comm.FMModulator            |      |
| comm.FMDemodulator          |      |

#### 模拟通带调制

| 函数       | 含义   |
| -------- | ---- |
| ammod    |      |
| amdemod  |      |
| fmmod    |      |
| fmdemod  |      |
| pmmod    |      |
| pmdemod  |      |
| ssbmod   |      |
| ssbdemod |      |

### 滤波

| System Object                   | 含义   |
| ------------------------------- | ---- |
| comm.IntergrateAndDumpFilter    |      |
| comm.RaisedCosineReceiveFilter  |      |
| comm.RaisedCosineTransmitFilter |      |

| 函数        | 含义     |
| --------- | ------ |
| intdump   |        |
| intrlv    | 重排序，交织 |
| rectpulse | 矩形脉冲成型 |

### 同步和接收机设计

| System Object                    | 含义               |
| -------------------------------- | ---------------- |
| comm.AGC                         |                  |
| comm.IQImbalanceCompensator      | IQ不平衡补偿          |
| comm.PSKCoarseFrequencyEstimator | 频偏估计，PSK         |
| comm.QAMCoarseFrequencyEstimator | 频偏估计，QAM         |
| comm.CoarseFrequencyCompensator  | 频偏补偿，PAM、PSK、QAM |
| comm.CarrierSynchronizer         | 载波频相偏同步          |
| comm.SymbolSynchronizer          | 时钟同步             |
| comm.GMSKTimingSynchronizer      | 时钟同步，GMSK        |
| comm.MSKTimingSynchronizer       | 时钟同步，MSK         |
| comm.PreambleDetector            | 检测前置码            |
| comm.DiscreteTimeVCO             |                  |

| 函数           | 含义   |
| ------------ | ---- |
| iqcoef2imbal |      |
| iqimbal2coef |      |

### 均衡

| System Object      | 含义   |
| ------------------ | ---- |
| comm.MLSEEqualizer |      |

| 函数       | 含义                                       |
| -------- | ---------------------------------------- |
| lineareq | 构造线性均衡器对象                                |
| lms      | Least mean square                        |
| signlms  | Signed LMS, signed regressor LMS, sign-sign LMS |
| normlms  | Normalized LMS                           |
| varlms   | Variable-step-size LMS                   |
| rls      | Recursive least squares                  |
| cma      | Constant modulus algorithm               |
| dfe      | 构造判决反馈均衡器对象                              |
| mlseeq   | 构造MLSE均衡器对象                              |
| equalize | 均衡器对象的方法，用来均衡信号                          |

## 信道建模与射频损伤

| System Object               | 含义     |
| --------------------------- | ------ |
| comm.AWGNChannel            |        |
| comm.gpu.AWGNChannel        |        |
| comm.RayleighChannel        |        |
| comm.RicianChannel          |        |
| comm.MIMOChannel            |        |
| comm.LTEMIMOChannel         |        |
| comm.WINNER2Channel         |        |
| comm.BinarySymmetricChannel |        |
| comm.MemorylessNonlinearity | 无记忆非线性 |
| comm.PhaseFrequencyOffset   | 相偏频偏   |
| comm.PhaseNoise             | 相位噪声   |
| comm.ThermalNoise           | 热噪声    |

| 函数                   | 含义             |
| -------------------- | -------------- |
| awgn                 |                |
| iqimbal              | IQ不平衡          |
| bsc                  | 二进制对称信道        |
| rayleighchan         | RayLeigh衰落信道对象 |
| ricianchan           | Rician衰落信道对象   |
| stdchan              | 标准化的信道模型对象     |
| fspl                 | 自由空间路损         |
| fogpl                | 雾和云对信号的衰减      |
| gaspl                | 大气对信号的衰减       |
| rainpl               | 雨对信号的衰减        |
| winner2.AntennaArray |                |
| winner2.dipole       |                |
| winner2.layoutparset |                |
| winner2.wim          |                |
| winner2.wimparset    |                |
| doppler              |                |
| doppler.ajakes       |                |
| doppler.bell         |                |
| doppler.bigaussian   |                |
| doppler.flat         |                |
| doppler.gaussian     |                |
| doppler.jakes        |                |
| doppler.rjakes       |                |
| doppler.rounded      |                |

## 测量、可视化和分析

| System Object             | 含义            |
| ------------------------- | ------------- |
| comm.ACPR                 | 相邻信道与目标信道功率之比 |
| comm.CCDF                 | 互补累积分布函数      |
| comm.ErrorRate            |               |
| comm.EVM                  | 误差功率与参考功率之比   |
| comm.MER                  | 信号功率与误差功率之比   |
| comm.ConstellationDiagram |               |
| comm.EveDiagram           |               |
| dsp.SpectrumAnaluzer      |               |
| dsp.TimeScope             |               |
| dsp.ArrayPlot             |               |

| 函数                 | 含义   |
| ------------------ | ---- |
| biterr             |      |
| symerr             |      |
| berawgn            |      |
| bercoding          |      |
| berconfint         |      |
| berfading          |      |
| berfit             |      |
| bersync            |      |
| semianalytic       |      |
| commtest.ErrorRate |      |
| scatterplot        |      |
| eyediagram         |      |
| marcumq            |      |
| noisebw            |      |
| qfunc              |      |
| qfuncinv           |      |

## MIMO(略)

## 兼容标准的波形生成(略)

## 代码生成(略)

## 用GPU加速仿真(略)

