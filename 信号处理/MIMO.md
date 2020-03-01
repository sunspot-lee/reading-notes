# 1. MIMO
Introduction to MIMO Communications (Hampton 2013) 读完第1章

* $N_t$个发射机，$N_r$个接收机的系统称为$N_t \times N_r$ MIMO
* MIMO的两个关键概念
    * spatial diversity 空间分集。目标是改善信道的可靠性，手段是space-time coding(空时编码)
    * spatial multiplexing 空间复用。目标是增加信道的容量
* 分集性能测度：diversity order, diversity gain, array gain
    * diversity order：$N_d$，接收机可用于合并的独立信号副本个数，$max\{N_d\} = N_t N_r$
    * diversity gain：$G_d$，当$E_b/N_0$足够大时，误bit概率$P_b$近似为
$$
P_b = \zeta [G_c (\overline{E_b / N_0})] ^ {-G_d}
$$
$\zeta$是依赖于调制类型的常量，$G_c$是称为编码增益的常量

* 多数情况下$N_d = G_d$
* MIMO系统能支持的最大数据流数$N_{stream} = min(N_t, N_r)$
