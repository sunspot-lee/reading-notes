---
tags: [通信/导线]
title: S参数级联
created: '2018-12-29T00:53:49.636Z'
modified: '2020-01-07T00:58:08.337Z'
---

# S参数级联

## 把 Single-Ended 4-Port S参数转换为 2-Port 差分S参数

缺省情况下， Single-Ended 4-Port S参数的参考阻抗是$50\Omega$，对应的 2-Port 差分S参数的参考阻抗是$2 * 50\Omega = 100\omega$。
$$
\begin{Bmatrix} b_1 \\ b_2 \\ b_3 \\ b_4 \end{Bmatrix}
= \begin{bmatrix} S_{11} & S_{12} & S_{13} & S_{14} \\
S_{21} & S_{22} & S_{23} & S_{24} \\
S_{31} & S_{32} & S_{33} & S_{34} \\
S_{41} & S_{42} & S_{43} & S_{44} \end{bmatrix}
\begin{Bmatrix} a_1 \\ a_2 \\ a_3 \\ a_4 \end{Bmatrix}
$$

对差模信号和共模信号，有：
$$
\begin{align*}
A_{D1} &= \frac{a_1 - a_3}2 &B_{D1} &= \frac{b_1 - b_3}2 \\
A_{D2} &= \frac{a_2 - a_4}2 &B_{D2} &= \frac{b_2 - b_4}2 \\
A_{C1} &= \frac{a_1 + a_3}2 &B_{C1} &= \frac{b_1 + b_3}2 \\
A_{C2} &= \frac{a_2 + a_4}2 &B_{C2} &= \frac{b_2 + b_4}2
\end{align*}
$$
用矩阵形式表达：
$$
\begin{align}
\begin{Bmatrix} a_1 \\ a_2 \\ a_3 \\ a_4 \end{Bmatrix}
&= \begin{bmatrix} 1 & 0 & 1 & 0 \\
0 & 1 & 0 & 1 \\
-1 & 0 & 1 & 0 \\
0 & -1 & 0 & 1 \end{bmatrix}
\begin{Bmatrix} A_{D1} \\ A_{D2} \\ A_{C1} \\ A_{C2} \end{Bmatrix} \\
\begin{Bmatrix} b_1 \\ b_2 \\ b_3 \\ b_4 \end{Bmatrix}
&= \begin{bmatrix} 1 & 0 & 1 & 0 \\
0 & 1 & 0 & 1 \\
-1 & 0 & 1 & 0 \\
0 & -1 & 0 & 1 \end{bmatrix}
\begin{Bmatrix} B_{D1} \\ B_{D2} \\ B_{C1} \\ B_{C2} \end{Bmatrix}
\end{align}
$$
把(2)(3)代入(1)得到：
$$
\begin{Bmatrix} B_{D1} \\ B_{D2} \\ B_{C1} \\ B_{C2} \end{Bmatrix}
= \begin{bmatrix} 1 & 0 & 1 & 0 \\
0 & 1 & 0 & 1 \\
-1 & 0 & 1 & 0 \\
0 & -1 & 0 & 1 \end{bmatrix}^{-1}
\begin{bmatrix} S_{11} & S_{12} & S_{13} & S_{14} \\
S_{21} & S_{22} & S_{23} & S_{24} \\
S_{31} & S_{32} & S_{33} & S_{34} \\
S_{41} & S_{42} & S_{43} & S_{44} \end{bmatrix}
\begin{bmatrix} 1 & 0 & 1 & 0 \\
0 & 1 & 0 & 1 \\
-1 & 0 & 1 & 0 \\
0 & -1 & 0 & 1 \end{bmatrix}
\begin{Bmatrix} A_{D1} \\ A_{D2} \\ A_{C1} \\ A_{C2} \end{Bmatrix}
$$

假设共模入射信号$A_{C1}$、$A_{C2}$为0，有：
$$
\begin{Bmatrix} B_{D1} \\ B_{D2} \end{Bmatrix}
= \frac12\begin{bmatrix}
(S_{11}-S_{31})-(S_{13}-S_{33}) &(S_{12}-S_{32})-(S_{14}-S_{34}) \\
(S_{21}-S_{41})-(S_{23}-S_{43}) &(S_{22}-S_{42})-(S_{24}-S_{44})
\end{bmatrix}
\begin{Bmatrix} A_{D1} \\ A_{D2} \end{Bmatrix}
$$
所以：
$$
\begin{align}
S_{DD11} &= \frac12((S_{11}-S_{31})-(S_{13}-S_{33})) \\
S_{DD12} &= \frac12((S_{12}-S_{32})-(S_{14}-S_{34})) \\
S_{DD21} &= \frac12((S_{21}-S_{41})-(S_{23}-S_{43})) \\
S_{DD22} &= \frac12((S_{22}-S_{42})-(S_{24}-S_{44}))
\end{align}
$$

## 把 2-Port 差分S参数转换为 2-Port 差分T参数

变化输入输出顺序：
$$
\begin{Bmatrix} A_{D1} \\ B_{D1} \end{Bmatrix}
= \begin{bmatrix} T_{11} & T_{12} \\ T_{21} & T_{22} \end{bmatrix}
\begin{Bmatrix} B_{D2} \\ A_{D2} \end{Bmatrix}
$$
转换公式为：
$$
\begin{align}
T_{11} &= \frac1{S_{21}} \\
T_{12} &= -\frac{S_{22}}{S_{21}} \\
T_{21} &= \frac{S_{11}}{S_{21}} \\
T_{22} &= \frac{S_{12} S_{21} - S_{11} S_{22}}{S_{21}} \\
\end{align}
$$

## 用T矩阵相乘的方法级联两个双端口网络

如果双端口网络A的输出端口2连接了双端口网络B的输入端口1，整个双端口网络的T矩阵为：
$$
T_{All} = T_A T_B
$$

## 把 2-Port 差分T参数转换为 2-Port 差分S参数

转换公式为：
$$
\begin{align}
S_{11} &= \frac{T_{21}}{T_{11}} \\
S_{12} &= \frac{T_{11} T_{22} - T_{12} T_{21}}{T_{11}} \\
S_{21} &= \frac1{T_{11}} \\
S_{22} &= -\frac{T_{12}}{T_{11}}
\end{align}
$$

## 把 2-Port 差分S参数转换为传输函数

