## 1 样本空间与概率

### 1.2 概率模型

试验产生试验结果，所有可能结果形成**样本空间**，样本空间的子集称为**事件**。

为每一个事件A确定一个数P(A)，称为事件A的**概率**。概率要满足以下概率公理：

1. **非负性**。对一切事件A，满足 $P(A) \ge 0$
2. **可加性**。设A和B对应的集合互不相交，则 $P(A \cup B) = P(A) + P(B)$
3. **归一化**。整个样本空间的概率为1

建立概率模型时可以任意定义概率，只要符合概率公理。不同的概率定义可能导致不同的结论。参考贝特朗悖论。

由概率公理导出的性质：

1. 若$A \subset B$则$P(A) \le P(B)$
2. $P(A \cup B) = P(A) + P(B) - P(A \cap B)$
3. $P(A \cup B) \le P(A) + P(B)$
4. $P(A \cup B \cup C) = P(A) + P(A^c \cap B) + P(A^c \cap B^c \cap C)$

#### 习题

5. 天才 P(A)=0.6，喜欢巧克力 P(B)=0.7，$P(A \cap B)=0.4$，$P(A^c \cap B^c) = P(A^c) P(B^c) = (1-P(A))(1-P(B)) = 0.4 \times 0.3 = 0.12$

6. 偶数A，奇数B，$P(A) = 2 P(B) \Rightarrow P(A) = 2/3, P(B) = 1/3$，概率率：$P(2)=P(4)=P(6)=2/9, P(1)=P(3)=P(5)=1/9$，小于4：$P(C) = P(\{1,2,3\}) = 1/9 + 2/9 + 1/9=4/9$

7. 样本空间是$\{E,OE,OOE,\cdots\}$

8. 中文版翻译错误，连续赢两场才能取胜。
   取胜概率$p_2 (p_1 + (1-p_1) p_3) = p_2 (p_1+p_3-p_1p_3)$最大要求
   $$
   p_2 (p_1 + p_3 - p_1 p_3) \ge p_1 (p_2 + p_3 - p_2 p_3) \\
   p_2 (p_1 + p_3 - p_1 p_3) \ge p_3 (p_1 + p_2 - p_1 p_2)
   $$
   简化得到
   $$
   p_2 p_3 \ge p_1 p_3 \\
   p_1 p_2 \ge p_1 p_3
   $$
   得到$p_2 \ge p_1$且$p_2 \ge p_3$

9. a. $A = A \cap \Omega = A \cap (\bigcup_{i=1}^n S_i) = \bigcup_{i=1}^n (A \cap S_i)$，又$\{A \cap S_i\}$互不相容，所以$P(A) = \sum_{i=1}^n P(A \cap S_i)$
   b. $\{B \cup C, B^c \cap C^c\}$是对$\Omega$的一个分割，所以
   $$
   \begin{align} P(A) &= P(A \cap (B \cup C)) + P(A \cap (B^c \cap C^c)) \\
   &= P(A \cap B \cup A \cap C) + P(A \cap B^c \cap C^c) \\
   &= P(A \cap B) + P(A \cap C) - P(A \cap B \cap A \cap C) + P(A \cap B^c \cap C^c) \\
   &= P(A \cap B) + P(A \cap C) + P(A \cap B^c \cap C^c) - P(A \cap B \cap C) \end{align}
   $$

10. 证明：
    $$
    \begin{align} & P((A \cap B^c) \cup (A^c \cap B)) \\
    &= P(A \cap B^c) + P(A^c \cap B) - P(A \cap B^c \cap A^c \cap B) \\
    &= P(A \cap B^c) + P(A \cap B) + P(A^c \cap B) + P(A \cap B) - 2P(A \cap B) \\
    &= P(A) + P(B) - 2 P(A \cap B) \end{align}
    $$

11. a. 证明：(书上的答案更好，但有公式错误)
    $$
    \begin{align} P(A \cap B) &= 1- P(A^c \cup B^c) \\
    &= 1 - (P(A^c) + P(B^c) - P(A^c \cap B^c)) \\
    &\ge 1 - P(A^c) - P(B^c) \\
    &= 1 - (1 - P(A)) - (1 - P(B)) \\
    &= P(A) + P(B) - 1 \end{align}
    $$
    b. 省略

12. a. 证明：
    $$
    \begin{align} P(A \cup B \cup C) &= P(A) + P(B \cup C) - P(A \cap (B \cup C)) \\
    &= P(A) + P(B) + P(C) - P(B \cap C) - P(A \cap B \cup A \cap C) \\
    &= P(A) + P(B) + P(C) - P(B \cap C) - P(A \cap B) - P(A \cap C) + P(A \cap B \cap A \cap C) \\
    &= P(A) + P(B) + P(C) - P(A \cap B) - P(A \cap C) - P(B \cap C) + P(A \cap B \cap C) \end{align}
    $$
    b. 省略

13. 较难，参考书上的答案

### 1.3 条件概率

给定事件B发生之下事件A的概率称为**条件概率P(A|B)**
$$
P(A|B) = \frac{P(A \cap B)}{P(B)}
$$

#### 习题

14. a. 6/36 = 1/6
    b. 2/6 = 1/3
    c. 11/36
    d. 10/30=1/3

15. 已知第一次为H，$P(HH|H_1) = p^2 / p = p $。已知至少一次H，$P(HH|H_{1 or 2}) = p^2 / (1-(1-p)^2) = p / (2-p) < p$，这个结论是对的。

16. 选中正常硬币且得到正面的概率是$\frac13 \times \frac12=\frac16$，得到正面的概率是$\frac13 (1+\frac12+0)=\frac12$，另一面是反面的概率是$\frac16 / \frac12=\frac13$

17. 中文版翻译错误，被接受的概率。$\binom{95}{4} / \binom{100}{4} = \frac{95 \times 94 \times 93 \times 92}{100 \times 99 \times 98 \times 97} \approx 0.8119$

18. 证明：
    $$
    P(A \cap B | B) = \frac{P(A \cap B \cap B)}{P(B)} = \frac{P(A \cap B)}{P(B)} = P(A|B)
    $$

### 1.4 全概率定理和贝叶斯准则

设$A_1, A_2, \cdots, A_n$是一组互不相容的事件，它形成样本空间的一个分割(即$A_1 \cup A_2 \cup \cdots \cup A_n = \Omega$)，又假定$\forall i, P(A_i) > 0$，则对于任何事件B，有：

**全概率定理**
$$
\begin{align} P(B) &= P(A_1 \cap B) + \cdots + P(A_n \cap B) \\
&= P(A_1) P(B|A_1) + \cdots + P(A_n) P(B|A_n) \end{align}
$$

**贝叶斯准则**
$$
\begin{align} P(A_i|B) &= \frac{P(A_i) P(B|A_i)}{P(B)} \\
&= \frac{P(A_i) P(B|A_i)}{P(A_1) P(B|A_1) + \cdots + P(A_n) P(B|A_n)} \end{align}
$$

通过选择合适的分割，全概率定理可以简化本来很难计算的P(B)。

如果事件$A_1, \cdots, A_n$都会造成事件B，当观察到B后，可以用贝叶斯准则来反推原因是$A_i$的概率$P(A_i|B)$。$P(A_i|B)$称为**后验概率** ，$P(A_i)$称为**先验概率** 。

#### 习题

19. 应用贝叶斯准则：如果$j \ne i$，在j号抽屉的概率是$p_j$，在j号而i号抽屉找不到的概率为1，在i号抽屉找不到的概率为$1-p_i d_i$，因此当在i号抽屉找不到时，在j号抽屉的概率是$\frac{p_j}{1-p_i d_i}$。如果$j=i$，在i号抽屉的概率是$p_i$，在i号而i号抽屉找不到的概率为$1-d_i$，在i号抽屉找不到的概率为$1-p_i d_i$，因此当在i号抽屉找不到时，在i号抽屉的概率是$\frac{p_i (1-d_i)}{1-p_i d_i}$。

20. a. i. $p_w p_w + (p_w (1-p_w) + (1-p_w) p_w) p_w = 3 p_w^2 - 2 p_w^3$，ii. $p_d p_d p_w = p_d^2 p_w$，iii. $p_w p_d + p_w (1-p_d) p_w + (1-p_w) p_w p_w = (2 p_w^2 + p_w p_d) - (p_w^3 + p_w^2 p_d)$
    b. 当$p_d > \frac{1 - 4 p_w^2 + 2 p_w^3}{2 p_w (1-p_w)}$时，即使$p_w < 1/2$，第3种策略的胜率也大于1/2。比如$p_w=0.45$，只要$p_d > 0.752$就行了。

21. 参考标准答案：让$p(m,k)$为第一个取球的人在坛子里还剩k个黑球时的取胜概率，有：
    $$
    p(m,k) = \frac{m}{m+k} + \frac{k}{m+k}(1-p(m,k-1)) = 1 - \frac{k}{m+k} p(m,k-1)
    $$

22. 第1次取出白球的概率是 $p(1) = \frac{m}{m+n}$，第2次取出白球的概率是
    $$
    \begin{align} p(2) &= p(1) \frac{m+1}{m+n+1} + (1-p(1)) \frac{m}{m+n+1} \\
    &= \frac{m+p(1)}{m+n+1} \\
    &= \frac{m}{m+n} \end{align}
    $$
    依此类推，每次取出白球的概率和第一次的概率是一样的。

23. 参考标准答案

24. 假设提问的是A，提问前有3种等概释放可能：释放AB、释放AC、释放BC，加上看守的答案后有4种可能：(释放AB，看守说B)、(释放AC，看守说C)、(释放BC，看守说B)、(释放BC，看守说C)，这4种可能的概率是：1/3、1/3、1/3 * 1/2、1/3 * 1/2，这4种可能中第1、2种A会被释放，因此提问后A的释放概率是1/3 + 1/3 = 2/3，不变。

25. 参考标准答案。**精彩**

26. a. $P(A|B) = \frac{P(A \cap B)}{P(B)} = p$
    b. $P(C) = P(A) P(C|A) + P(A^c) P(C|A^c) = p(1-q) + (1-p)(1-q) 0.5 = \frac{1+p}2(1-q)$，所以
    $$
    P(A|C) = \frac{P(A) P(C|A)}{P(C)} = \frac{p(1-q)}{\frac{1+p}2(1-q)} = \frac{2p}{1+p} > p = P(A)
    $$

27. 参考书上的答案

28. 证明：
    $$
    \begin{align} \sum_{i=1}^n P(C_i|B) P(A|B \cap C_i) &= \sum_{i=1}^n \frac{P(B \cap C_i)}{P(B)} \frac{P(A \cap B \cap C_i)}{P(B \cap C_i)} \\
    &= \sum_{i=1}^n \frac{P(A \cap B \cap C_i)}{P(B)} \\
    &= \frac{P(A \cap B)}{P(B)} \\
    &= P(A|B) \end{align}
    $$

29. a. $P(A|B) > P(A) \Leftrightarrow \frac{P(A \cap B)}{P(B)} > P(A) \Leftrightarrow \frac{P(A \cap B)}{P(A)} > P(B) \Leftrightarrow P(B|A) > P(B)$
    b. 证明：
    $$
    \begin{align} P(A|B^c) < P(A) &\Leftrightarrow P(A \cap B^c) < P(A) P(B^c) \\
    &\Leftrightarrow 1-P(A \cap B) < P(A)-P(A)P(B) \\
    &\Leftrightarrow P(A \cap B) > P(A)P(B) - P(A) + 1 \ge P(A)P(B) \\
    &\Leftrightarrow P(A|B) > P(A) \end{align}
    $$
    c. A={宝物在第一个地点}，B={在第一个地点发现宝物}
    $$
    P(A^c|B^c) = \frac{P(A^c \cap B^c)}{P(B^c)} = \frac{1-\beta}{\beta (1-p) + (1-\beta)} = \frac{1-\beta}{1-\beta p} > 1-\beta = P(A^c)
    $$

### 1.5 独立性

如果$P(A \cap B) = P(A) P(B)$，称事件A和事件B**相互独立**。

如果$P(B) > 0$，独立性等价于$P(A|B) = P(A)$。

如果A和B相互独立，则A和$B^c$也相互独立。

如果$P(C) > 0$时，有$P(A \cap B | C) = P(A|C) P(B|C)$，称A和B在给定C之下**条件独立**。

如果$P(B|C) > 0$，条件独立性等价于$P(A|B \cap C) = P(A|C)$。

独立性并不蕴涵条件独立性，反之亦然。

如果$P(\bigcap_{i \in S}A_i) = \prod_{i \in S}P(A_i)$，对**任意$\{1,2,\cdots,n\}$的子集S**成立，称$A_1,A_2,\cdots,A_n$相互独立。

#### 习题

30. $P(Succ) = p^2 + 2 p(1-p)\frac12 = p$，所以两条和一条是一样的。

31. a. $P(Succ) = P(0|0) + P(1|1) = p(1-\epsilon_0) + (1-p)(1-\epsilon_1) = 1 - p \epsilon_0 - (1-p)\epsilon_1$
    b. $P(1011) = P(1)P(0)P(1)P(1) = (1-\epsilon_0)(1-\epsilon_1)^3$
    c. $P(000) = \binom{3}{2}P(0|0)P(0|0)P(1|0)+P(0|0)P(0|0)P(0|0) = (1-\epsilon_0)^2 (1+2\epsilon_0)$
    d. $(1-\epsilon_0)^2 (1+2\epsilon_0) > 1-\epsilon_0 \Rightarrow \epsilon_0(1-2\epsilon_0)>0 \Rightarrow 0<\epsilon_0<0.5$
    e. 
    $$
    \begin{align} P(T_0|R_{101}) &= \frac{P(T_0) P(R_{101}|T_0)}{P(T_0) P(R_{101}|T_0)+P(T_1) P(R_{101}|T_1)} \\
    &= \frac{p \epsilon_0^2 (1-\epsilon_0)}{p \epsilon_0^2 (1-\epsilon_0) + (1-p)\epsilon_1(1-\epsilon_1)^2} \end{align}
    $$

32. 参考标准答案。假设父母必须生两个，国王有一个兄弟的概率是1/3

33. 连续抛硬币知道出现连续两次不同的情况，然后用最后一次的结果来作决策

34. 第一个子系统有效的概率是p，第三个子系统有效的概率是$1-(1-p)^2=p(2-p)$，第二个子系统有效的概率是：
    $$
    P(2) = 1-(1-p)(1- (1-(1-p)^3) p) = p(1+3p-6p^2+4p^3-p^4)
    $$

35. 有效概率为：$\sum_{i=k}^n\binom{n}{i}p^i (1-p)^{n-i}$

36. a. 停电概率为：$\prod_{i=1}^n p_i$
    b. 停电概率为：$\prod_{i=1}^n p_i + \sum_{i=1}^n (1-p_i) \prod_{j \ne i}p_j$

37. 参考标准答案

38. T领先的概率：$p_T = \sum_{i=6}^8 \binom{8}{i} p^i (1-p)^{8-i}$。W领先的概率：$p_W = \sum_{i=4}^8 \binom{8}{i}(1-p)^i p^{8-i}$

39. 好天气：$\sum_{i=k}^n \binom{n}{i} p_g^i (1-p_g)^{n-i}$。坏天气：$\sum_{i=k}^n \binom{n}{i} p_b^i (1-p_b)^{n-i}$

40. $q_n = p(1-q_{n-1}) + (1-p)q_{n-1}$，$q_0=1$，$q_1=1-p$
    $$
    q_n = p + p\sum_{i=1}^{n-1}(1-2p)^i + (1-2p)^n = \frac12(1 + (1-2p)^n)
    $$

41. 参考标准答案。中文版翻译不清楚。

42. 参考书上的答案

43. a. $P(A \cap B^c) = P(A) - P(A \cap B) = P(A) - P(A) P(B) = P(A) P(B^c)$
    b. 利用a的结果直接可证

44. $P(A \cap B | C) = \frac{P(A \cap B \cap C)}{P(C)} = \frac{P(A)P(C)}{P(C)} \frac{P(B)P(C)}{P(C)} = P(A|C) P(B|C)$

45. 证明：
    $$
    \begin{align} P(A_1 \cup A_2 | A_3 \cap A_4) &= \frac{P((A_1 \cup A_2) \cap A_3 \cap A_4)}{P(A_3 \cap A_4)} \\
    &= \frac{P(A_1 \cap A_3 \cap A_4) + P(A_2 \cap A_3 \cap A_4) - P(A_1 \cap A_2 \cap A_3 \cap A_4)}{P(A_3 \cap A_4)} \\
    &= P(A_1) + P(A_2) - P(A_1 \cap A_2) \\
    &= P(A_1 \cup A_2) \end{align}
    $$

46. 参考书上的答案

47. 参考书上的答案

48. 参考书上的答案

### 1.6 计数法

n个对象的排列数：$n!$

n个对象中取k个对象的排列数：$\frac{n!}{(n-k)!}$

n个对象中取k个对象的组合数：$\binom{n}{k} = \frac{n!}{k! (n-k)!}$

n个对象分成r组的分割数：$\binom{n}{n_1,n_2,\cdots,n_r} = \frac{n!}{n_1! n_2! \cdots n_r!}$

#### 习题

49. 11={1+4+6, 1+5+5, 2+3+6, 2+4+5, 3+3+5, 3+4+4}=6+3+6+6+3+3=27
    12={1+5+6, 2+4+6, 2+5+5, 3+3+6, 3+4+5, 4+4+4}=6+6+3+3+6+1=25
    11的概率大

50. $\frac{365! / (365-n)!}{365^n}=\frac{365!}{(365-n)! 365^n}$

51. a. 第一种算法：$\frac{2 m n}{(m+n) (m+n-1)}$
    第二种算法：$\frac{m}{m+n} \frac{n}{m+n-1} + \frac{n}{m+n} \frac{m}{m+n-1} = \frac{2 m n}{(m+n) (m+n-1)}$
    b. {R, W, RR, RW, WR, WW, RRR, RRW, RWR, RWW, WRR, WRW, WWR, WWW}
    $\frac13 \frac{m}{m+n} + \frac13 \frac{m (m-1)}{(m+n) (m+n-1)} + \frac13 \frac{m (m-1) (m-2)}{(m+n) (m+n-1) (m+n-2)}$

52. $\frac{\binom{48}{12} 12! 4}{\binom{52}{13} 13!} = \frac{703}{20825}$

53. $\frac{\binom{88}{28,30,30} 3 }{\binom{90}{30,30,30}} = \frac{29}{89}$

54. a. $20!$
    b. $2 \times 10! \times 10! / 20!$

55. $\frac{8!}{\binom{64}{8}} = \frac{8! \times 8! \times 56!}{64!}$

56. a. $\binom{8}{4}\binom{10}{3}$
    b. $\binom{5}{3}\binom{7}{3}+\binom{5}{2}\binom{5}{1}\binom{5}{1}+\binom{5}{1}\binom{5}{2}\binom{5}{1}+\binom{5}{3}\binom{6}{4}$

57. $26! \binom{25}{5}$

58. a. $\frac{\binom{48}{4}\binom{4}{3}}{\binom{52}{7}}$
    b. $\frac{\binom{48}{5}\binom{4}{2}}{\binom{52}{7}}$
    c. $\frac{\binom{48}{4}\binom{4}{3}}{\binom{52}{7}} + \frac{\binom{48}{5}\binom{4}{2}}{\binom{52}{7}} - \frac{\binom{44}{2}\binom{4}{3}\binom{4}{2}}{\binom{52}{7}}$

59. $\frac{\binom{k}{n} \binom{100-k}{m-n}}{\binom{100}{m}}$

60. $\frac{48! 4! 13^4}{52!}$

61. 参考书上的答案

62. 参考书上的答案

## 2 离散随机变量

### 2.1 基本概念

对样本空间中的每一个试验结果，关联一个特定的数，这种对应关系形成一个**随机变量** 。试验结果对应的数称为随机变量的取值。

**与随机变量相关的主要概念**

* 随机变量是试验结果的实值函数
* 随机变量的函数定义了另一个随机变量
* 对一个随机变量，可以定义一些平均量，例如均值和方差
* 可以在某事件或某随机变量的条件之下定义一个随机变量
* 存在一个随机变量与某事件或某随机变量相互独立的概念

若一个随机变量的值域为一个有限集合或可数无限集合，则称这个随机变量为**离散的** 。

**与离散随机变量相关的概念**

* 离散随机变量是试验结果的实值函数，它的取值范围只能是有限多个值或可数无限多个值
* 离散随机变量有一个**分布** (PMF, probability mass function)。对随机变量的每一个取值，分布给出一个概率
* 离散随机变量的函数也是离散随机变量，它的分布可以从原随机变量的分布得到

### 2.2 PMF

#### 2.2.1 伯努利随机变量

概率模型有两个试验结果{A, B}，A出现的概率为p，B出现的概率为1-p。

伯努利随机变量为：
$$
X = \begin{cases} 1, & \text{A出现} \\
0, & \text{B出现} \end{cases}
$$
伯努利随机变量的PMF为：
$$
p_X(k) = \begin{cases} p, & \text{k=1} \\
1-p, & \text{k=0} \end{cases}
$$

#### 2.2.2 二项随机变量

概率模型有两个试验结果{A, B}，A出现的概率为p，B出现的概率为1-p。

二项随机变量为n次试验后A出现的次数。

二项随机变量的PMF为：
$$
p_X(k) = \binom{n}{k} p^k (1-p)^{n-k}, \quad k=0,1,\cdots,n
$$

#### 2.2.3 几何随机变量

概率模型有两个试验结果{A, B}，A出现的概率为p，B出现的概率为1-p。

几何随机变量为连续试验直到A出现的试验次数。

几何随机变量的PMF为：
$$
p_X(k) = (1-p)^{k-1} p, \quad k=1,2,\cdots
$$

#### 2.2.4 泊松随机变量

泊松随机变量的PMF为：
$$
p_X(k) = e^{-\lambda} \frac{\lambda^k}{k!}, \quad k=0,1,2,\cdots
$$
泊松随机变量可以逼近n很大，p很小，$np=\lambda$，条件下的二项随机变量：
$$
e^{-\lambda} \frac{\lambda^k}{k!} \approx \binom{n}{k} p^k (1-p)^{n-k}, \quad k=0,1,\cdots,n
$$

#### 习题

1. PMF
   $$
   \begin{align} p(0) &= 0.18 \\
   p(1) &= 0.2*0.3+0.6*0.35=0.27 \\
   p(2) &= 0.2*0.35+0.6*0.35+0.2*0.3=0.34 \\
   p(3) &= 0.2*0.35+0.2*0.35=0.14 \\
   p(4) &= 0.07 \end{align}
   $$

2. 中文版翻译不清楚。精确解：$\binom{499}{1}\frac1{365} (1-\frac1{365})^{498} \approx 0.3487$，泊松逼近解：$\lambda=499/365, e^{-\lambda}\lambda \approx 0.3484$

3. a. 菲切尔在第k盘取胜的概率为$p(k) = 0.3^{k-1} 0.4$，10盘内取胜的概率为$\sum_{i=1}^{10} p(i) \approx 0.5714$
   b. PMF：下k盘分出胜负的概率是$p(k) = 0.3^{k-1} 0.7, k=1,2,\cdots,9$，$p(10) = 0.3^9$

4. a. PMF：$p_1(k) = \binom{1000}{k} 0.01^k (1-0.01)^{1000-k}, k = 0,1,\cdots,49$，$p(50) = 1-\sum_{k=0}^{49}p_1(k)$
   b. $\lambda=1000 \times 0.01=10$，$p_2(k) \approx e^{-10}\frac{10^k}{k!}, k=0,1,\cdots,49$，$p(50) = 1-\sum_{k=0}^{49}p_2(k)$
   c. 精确解：$1-\sum_{k=0}^{50} p_1(k) \approx 2.376 \times 10^{-14}$，泊松逼近解：$1-\sum_{k=0}^{50} p_2(k) \approx -2.220 \times 10^{-16}$

5. a. 第一时段结束时：$p_0(k) = e^{-\lambda}\frac{\lambda^k}{k!}, k=0,1,\cdots,b-1$，$p(b) = 1-\sum_{k=0}^{b-1}p_0(k)$
   第二时段结束时：$p(0) = \sum_{k=0}^c p_0(k)$，$p(k) = p_0(k+c), k<b-c$，$p(b-c) = 1-\sum_{k=0}^{b-1} p_0(k)$
   b. $1-\sum_{k=0}^b p_0(k)$

6. 参考标准答案

7. a. 1. $p(k)=\binom{4}{k-1}\frac{(k-1)! (5-k)!}{5!}=\frac15, k=1,2,3,4,5$，2. $p(k) = (\frac45)^{k-1}\frac15, k=1,2,\cdots$
   b. 1. $p(k) = \binom{8}{k-1}\frac{(k-1)! 2 (10-k)!}{10!}=\frac{10-k}{45}, k=1,2,\cdots,9$，2. $p(k) = (\frac45)^{k-1}\frac15, k=1,2,\cdots$

8. 证明：
   $$
   \begin{align} p_X(k+1) &= \binom{n}{k+1} p^{k+1}(1-p)^{n-k-1} \\
   &= \frac{n-k}{k+1}\binom{n}{k} \frac{p}{1-p} p^k (1-p)^{n-k} \\
   &= \frac{p}{1-p} \frac{n-k}{k+1} p_X(k)\end{align}
   $$

9. 参考标准答案

10. 证明：$\frac{p(k)}{p(k-1)} = \frac{\lambda}{k}$，所以$k \le \lambda$时递增，否则递减

11. 参考书上的答案

12. 参考书上的答案

### 2.3 随机变量的函数

设$Y=g(X)$是随机变量X的函数，则Y也是一个随机变量，$p_Y(y) = \sum_{\{x|g(x)=y\}} p_X(x)$

#### 习题

13. $p(x)=\binom{5}{x-2} (\frac12)^5, x=2,3,\cdots,7$

14. a. $p_Y(0)=\frac4{10}$，$p_Y(1)=p_Y(2)=\frac3{10}$。
    b. $p_Y(0)=p_Y(1)=\frac15$，$p_Y(2)=\frac1{10}$，$p_Y(5)=\frac12$

15. $p_Y(0)=\frac1{2n+1}$，$p_Y(y)=\frac2{2n+1}, y=ln(a), 2ln(a, \cdots, n ln(a))$

### 2.4 期望、均值和方差

**期望** ：
$$
E[X]=\sum_x x p_X(x)
$$

#### 2.4.1 方差、矩和随机变量的函数的期望规则

**n阶矩**：
$$
E[X^n] = \sum_x x^n p_X(x)
$$

**方差** ：
$$
var(X) = E[(X - E[X])^2]
$$

**标准差** ：
$$
\sigma_X = \sqrt{var(X)}
$$

#### 2.4.2 均值和方差的性质

**随机变量的线性函数的均值和方差** ：令$Y = a X + b$，则
$$
E[Y] = a E[X] + b \\
var(Y) = a^2 var(X)
$$

**用矩表达的方差公式** ：
$$
var(X) = E[X^2] - (E[X])^2
$$

除非$g(X)$是线性函数，一般情况下$E[g(X)]$不等于$g(E[X])$

#### 2.4.3 某些常用的随机变量的均值和方差

**伯努利随机变量**：
$$
\begin{align} E[X] &= 1 \cdot p + 0 \cdot (1-p) = p \\
var(X) &= p - p^2 = p (1-p) \end{align}
$$

**离散均匀随机变量**：
$$
p_X(k) = \begin{cases} \frac1{b-a+1}, & k=a,a+1,\cdots,b \\
0, & \text{else}\end{cases} \\
\begin{align} E[X] &= \frac{a+b}2 \\
var(X) &= \frac{(b-a)(b-a+2)}{12} \end{align}
$$

**泊松随机变量**：
$$
\begin{align} E[X] &= \lambda \\
var(X) &= \lambda \end{align}
$$

#### 习题

16. a. $\sum_{x=-3}^3 p_X(x) = 1$，所以$a=28$。$E[X] = \sum_{x=-3}^3 x p_X(x) = 0$
    b. $p_Z(z) = \frac1{14}z, \quad z=1,4,9$
    c. $var(X) = E[Z] = 7$
    d. $var(X) = \sum_{x=-3}^3 x^2 p_X(x) = 7$

17. 均值为$50^\circ F$，方差为$18^\circ F$

18. $E[X] = \sum_{i=a}^b \frac1{b-a+1} 2^i$，$E[X^2] = \sum_{i=a}^b \frac1{b-a+1} 2^{2i}$，$var(X)=\frac{4^{b+1}-4^a}{3(b-a+1)}-(\frac{2^{b+1}-2^a}{b-a+1})^2$

19. 参考书上的答案

20. 包数x是几何随机变量，$E[X] = \sum_{x=1}^\infty x (1-p)^{x-1}p = \frac1p$，$E[X^2] = \frac{2-p}{p^2}$，$var(X) = \frac{1-p}{p^2}$

21. $E[2^n] = \sum_{n=1}^\infty 2^n \frac1{2^n} = \infty$

22. hh：pq，ht：p(1-q)，th：(1-p)q，tt：(1-p)(1-q)
    a. $P(\{ht, th\}) = p(1-q) + (1-p)q = p+q-2pq$，$E[X]=\frac1{p+q-2pq}$，$var(X) = \frac{1-p-q+2pq}{(p+q-2pq)^2}$
    b. $\frac{p(1-q)}{p+q-2pq}$

23. a. PMF：$p(n)=2 \cdot \frac1{2^{n-1}} \cdot \frac12 = \frac1{2^{n-1}}, \quad n=2,3,\cdots$，$E[N] = 3$，$var(N) = 2$
    b. 中文版翻译错误。PMF：$p(n) = (n-1) \cdot \frac1{2^n}, \quad n=2,3,\cdots$，$E[N] = 4$

### 2.5 多个随机变量的联合分布

在同一试验中有两个随机变量X和Y

**联合分布**
$$
p_{X,Y}(x,y) = P(X=x, Y=y)
$$
**边缘分布**
$$
p_X(x) = \sum_y p_{X,Y}(x,y) \\
p_Y(y) = \sum_x p_{X,Y}(x,y)
$$

#### 2.5.1 多个随机变量的函数

#### 2.5.2 多于两个随机变量的情况

**二项随机变量**
$$
\begin{align} E[X] &= np \\
var(X) &= np(1-p) \end{align}
$$

#### 习题

24. a. $p_X(x) = \frac17, x=-2,-1,\cdots,4$，$E[X] = 1$
    $$
    p_Y(y) = \begin{cases} \frac1{21}, & y=-3,5 \\
    \frac2{21}, &y = -2,4 \\
    \frac17, & y = -1,0,\cdots,3 \end{cases} \\
    E[Y] = 1
    $$
    b. $E[200 X + 100 Y] = 200 \times 1 + 100 \times 1 = 300$

25. a. $p_{I,J}(i,j) = \frac1{\sum_i m_i}, j \le m_i$，$p_I(i) = \frac{m_i}{\sum_i m_i}$，$p_J(j) = \frac{\sum_{i|m_i \ge j}1}{\sum_i m_i}$
    b. $\sum_{j=1}^{m_i} (a p_{i,j} + b (1-p_{i,j}))$

26. a. $p_X(x) = \binom{3}{1}\frac1{10}(\frac{110-x}{10})^2 + \binom{3}{2}(\frac1{10})^2 \frac{110-x}{10} + (\frac1{10})^3$
    b. $E[X] = 103.025 < 105.5$

27. 参考书上的答案

28. 参考书上的答案

29. 参考书上的答案

30. 参考书上的答案

### 2.6 条件

#### 2.6.1 某个事件发生的条件下的随机变量

#### 2.6.2 给定另一个随机变量的值的条件下的随机变量

#### 2.6.3 条件期望

**几何随机变量**
$$
\begin{align} E[X] &= \frac1p \\
var(X) &= \frac{1-p}{p^2} \end{align}
$$

#### 习题

31. $p_{X,Y}(x,y) = \binom{4}{x,y,4-x-y} (\frac16)^x (\frac16)^y (\frac46)^{4-x-y}, \quad x+y \le 4$

32. 参考标准答案

33. 参考书上的答案

34. 参考书上的答案

35. 参考书上的答案

36. 参考书上的答案

37. 参考书上的答案

|       | PMF                                      | E[...]                                   |
| ----- | ---------------------------------------- | ---------------------------------------- |
| X     | $p_X(x) = \sum_y p_{X,Y}(x,y) = \sum_y p_Y(y) p_{X \vert Y}(x \vert y)$ | $E[g(X)] = \sum_x g(x) p_X(x) = \sum_y p_Y(y) E[g(X) \vert Y]$ |
| (X,Y) | $p_{X,Y}(x,y) = P(X=x,Y=y) = p_Y(y) p_{X \vert Y}(x \vert y)$ | $E[g(X,Y)] = \sum_{(x,y)} g(x,y) p_{X,Y}(x,y)$ |
| X\|Y  | $p_{X \vert Y}(x \vert y) = P(X=x \vert Y=y) = \frac{p_{X,Y}(x,y)}{p_Y(y)}$ | $E[X \vert Y] = \sum_x x p_{X \vert Y}(x \vert y)$ |

### 2.7 独立性

#### 2.7.1 随机变量与事件的相互独立性

如果$\forall x, P(X=x \text{ and } A) = P(X=x) P(A) = p_X(x) P(A)$，称随机变量X和事件A相互独立。

如果$P(A)>0$，独立性等价于$\forall x, p_{X|A}(x) = p_X(x)$。

#### 2.7.2 随机变量之间的相互独立性

如果$\forall (x,y), p_{X,Y}(x,y) = p_X(x) p_Y(y)$，称随机变量X和Y相互独立。

如果$p_Y(y)>0$，独立性等价于$\forall x, p_{X|Y}(x|y) = p_X(x)$。

如果X和Y相互独立，则：
$$
\begin{align} E[X Y] &= E[X] E[Y] \\
E[g(X) h(Y)] &= E[g(X)] E[h(Y)] \\
var(X + Y) &= var(X) + var(Y) \end{align}
$$

#### 2.7.3 几个随机变量的相互独立性

#### 2.7.4 若干个相互独立的随机变量的和的方差

#### 习题

38. a. $p_X(x) = \binom{4}{x} (\frac12)^x (\frac12)^{4-x}$，$E[X] = 4 \times \frac12 = 2$，$var(X) = 4 \times \frac12 \times \frac12 = 1$
    b. $var(2X) = 4 var(X) = 4$

39. $E[X] = 10 \times 3.5 = 35$，$var(X) = 10 \frac{5 \times 7}{12} = 29.17$

40. 参考标准答案

41. a. 二项随机变量，$E[X] = np = 50 \times 5 \times 0.02 = 5$，$p_X(5) = \binom{250}{5}0.02^5(1-0.02)^{245} = 0.1772$
    b. $\lambda = np = 5$，$p_X(5) = e^{-\lambda} \frac{\lambda^5}{5!} = 0.1755$
    c. 设Y为每天罚款额
    $E[Y] = 0.01 \times 10 + 0.006 \times 20 + 0.004 \times 50 = 0.42$，$250 \cdot E[Y] = 105$
    $var(Y) = 0.01 \times 10^2 + 0.006 \times 20^2 + 0.004 \times 50^2 - 0.42^2 = 13.22$，$250 \cdot var(Y) = 3305$
    d. $(p-0.02)^2 < \frac{25 p(1-p)}{250} \Rightarrow 0.002924<p<0.1243$

42. a. $E[X_i]=S$，$E[S_n]=\frac1n n S=S$，$var(S_n)=\frac1{n^2} n var(X_i)=\frac1n var(X_i) \rightarrow 0$
    b. $S_n = (1-\frac1n)S_{n-1} + \frac1n X_n$
    c. 略
    d. 略

43. 参考书上的答案

44. 参考书上的答案

45. 参考书上的答案

46. 参考书上的答案

### 2.8 小节和讨论

## 3 一般随机变量

### 3.1 连续随机变量和概率密度函数

对于随机变量X，若存在一个非负函数$f_X$，使得$P(X \in B) = \int_B f_X(x) dx$对每一个实数轴上的集合B都成立，则称X为**连续随机变量**，函数$f_X$为X的**概率密度函数**(PDF)。

#### 3.1.1 期望

X的**期望**：$E[X] = \int_{-\infty}^\infty x f_X(x) dx$，要求：$\int_{-\infty}^\infty x f_X(x) dx < \infty$

g(X)的期望：$E[g(X)] = \int_{-\infty}^\infty g(x) f_X(x) dx$

X的**n阶矩**：$E[X^n]$

X的**方差**：$var(X) = E[(X-E[X])^2] = E[X^2] - (E[X])^2$

设$Y=aX+b$，则：$E[Y] = a E[X] + b$，$var(Y) = a^2 var(X)$

**均匀随机变量**
$$
\begin{align} f_X(x) &= \begin{cases} \frac1{b-a}, & a \le x \le b \\ 0, & else \end{cases} \\
E[X] &= \frac{a+b}2 \\
var(X) &= \frac{(b-a)^2}{12} \end{align}
$$

#### 3.1.2 指数随机变量

指数随机变量的PMF：
$$
f_X(x) = \begin{cases} \lambda e^{-\lambda x}, & x \ge 0 \\ 0, & else \end{cases}
$$
其中$\lambda$是分布参数，可看作单位时间内事件发生的概率，$\lambda>0$。

指数分布有特性$P(X \ge a) = e^{-\lambda a}$

**指数随机变量类似几何随机变量**，可以看作事件第一次发生的时间。

均值和方差：
$$
\begin{align} E[X] &= \frac1{\lambda} \\
var(X) &= \frac1{\lambda^2} \end{align}
$$

#### 习题

1. PMF
   $$
   p_Y(y) = \begin{cases} \frac13, & y=1 \\ \frac23, & y=2 \end{cases} \\
   E[Y] = \frac53
   $$

2. 验证
   $$
   \begin{align} \int_{-\infty}^\infty f_X(x) dx &= \int_{-\infty}^\infty \frac{\lambda}{2}e^{-\lambda |x|} dx \\
   &= \int_{-\infty}^0 \frac{\lambda}{2}e^{\lambda x} dx + \int_0^{\infty} \frac{\lambda}{2}e^{-\lambda x} dx \\
   &= \left. \frac12 e^{\lambda x} \right|_{-\infty}^0 - \left. \frac12 e^{-\lambda x} \right|_0^{\infty} \\
   &= 1 \end{align}
   $$
   均值：$f_X(-x) = f_X(x)$，所以$E[X]=0$
   方差：
   $$
   \begin{align} var(X) &= E[X^2] - (E[X])^2 \\ &= E[X^2] \\ &= \int_{-\infty}^\infty x^2 \frac{\lambda}2 e^{-\lambda |x|} dx \\
   &= \lambda \int_0^\infty x^2 e^{-\lambda x} dx \\
   &= \int_0^\infty 2x e^{-\lambda x} dx - \left. x^2 e^{-\lambda x} \right|_0^\infty \\
   &= \left.  -\frac2{\lambda^2} e^{-\lambda x}(1+\lambda x) - x^2 e^{-\lambda x} \right|_0^\infty \\
   &= \frac2{\lambda^2}\end{align}
   $$

3. 参考书上的答案

4. 参考书上的答案

### 3.2 分布函数

随机变量X的分布函数(CDF)是：
$$
F_X(x) = P(X \le x) = \begin{cases} \sum_{k \le x} p_X(k), & \text{若X是离散的} \\ \int_{-\infty}^x f_X(t) dt, & \text{若X是连续的} \end{cases}
$$
CDF又称**累积分布函数**，有下列性质：

* $F_X(x)$是x的单调增函数
* 当$x \rightarrow -\infty$，$F_X(x) \rightarrow 0$，当$x \rightarrow \infty$，$F_X(x) \rightarrow 1$
* 当X是离散随机变量时，$F_X(x)$是阶梯函数
* 当X是连续随机变量时，$F_X(x)$是连续函数

几何随机变量的CDF：
$$
F_{geo}(n) = 1-(1-p)^n
$$
指数随机变量的CDF：
$$
F_{exp}(x) = 1-e^{-\lambda x}
$$
令$\delta = -\ln(1-p) / \lambda$，这样，在$x=n \delta$处，几何随机变量和指数随机变量的CDF相等

#### 习题

5. 令$Y=h-X$，$F_Y(y) = P(Y \le y) = \frac{y^2}{h^2}, 0 \le y \le h$
   $f_Y(y) = \frac{d}{dy} F_Y(y) = \frac{2y}{h^2}$
   $f_X(x) = P_Y(h-x) = \frac{2(h-x)}{h^2}$
   $F_X(x) = \int_0^x f_X(x) = \frac{2x}{h} - \frac{x^2}{h^2}$

6. CDF：$F_X(x) = \frac12 P(X \le x | Y=0) + \frac12 P(X \le x | Y=1) = \frac12(2-e^{-\lambda x})$

7. a. $f_X(x) = \frac{d}{dx}F_X(x) = \frac{d}{dx} \frac{x^2}{r^2} = \frac{2x}{r^2}, 0 \le x \le r$
   $E[X] = \frac23 r$，$var(X) = \frac12 r^2 - (\frac23 r)^2 = \frac{r^2}{18}$
   b. $F_S(s) = \begin{cases} 1-\frac{1}{r^2s^2}, & s > \frac1t \\ 1-\frac{t^2}{r^2}, & 0 \le s < \frac1t \end{cases}$

8. a. $F_X(x) = P(X<x) = p P(Y<x) + (1-p) P(Z<x)$，所以$f_X(x) = \frac{d}{dx} F_X(x) = p f_Y(x) + (1-p) f_Z(x)$
   b. $F_X(x) = \begin{cases} p e^{\lambda x}, & x < 0 \\ 1 - (1-p)e^{-\lambda x}, & x \ge 0 \end{cases}$

9. 参考书上的答案

10. 参考书上的答案

### 3.3 正态随机变量

正态随机变量的PDF：
$$
f_X(x) = \frac1{\sqrt{2\pi} \sigma} e^{-(x-\mu)^2 / (2 \sigma^2)}
$$
正态随机变量的均值和方差：
$$
\begin{align} E[X] &= \mu \\ var(X) &= \sigma^2 \end{align}
$$
设X是正态随机变量，则$Y=aX+b$也是正态随机变量，其均值为$a\mu+b$，方差为$a^2\sigma^2$。

期望为0，方差为1的正态随机变量称为标准正态随机变量，并用$\Phi$来命名它的CDF：

#### 习题

11. a. $P(X \le 1.5) = \Phi(1.5) = 0.9332$，$P(X \le -1) = 1-P(X \le 1) = 1-\Phi(1) = 1-0.8413 = 0.1587$
    b. $E[\frac{Y-1}{2}] = 0$，$var(\frac{Y-1}{2}) = 1$，PDF：$\frac1{\sqrt{2\pi}} e^{-x^2/2}$
    c. $P(-1 \le Y \le 1) = \Phi(\frac{1-1}{2}) - \Phi(\frac{-1-1}{2}) = \Phi(0) - (1-\Phi(1)) = 0.5-(1-0.8413) = 0.3413$

12. $P(X \ge \sigma) = P(Z \ge 1) = 1-\Phi(1) = 1-0.8413=0.1587$，
    $P(X \ge 2\sigma) = P(Z \ge 2) = 1-\Phi(2) = 1-0.9772=0.0228$，
    $P(X \ge 3\sigma) = P(Z \ge 3) = 1-\Phi(3) = 1-0.9987=0.0013$，
    $P(|X| \le \sigma) = P(-1 \le Z \le 1) = \Phi(1) - (1-\Phi(1)) = 0.6826$，
    $P(|X| \le 2\sigma) = P(-2 \le Z \le 2) = \Phi(2) - (1-\Phi(2)) = 0.9544$，
    $P(|X| \le 3\sigma) = P(-3 \le Z \le 3) = \Phi(3) - (1-\Phi(3)) = 0.9974$

13. $59^\circ F = 15^\circ C$，$P(X \le 15) = P(Z \le 0.5) = \Phi(0.5) = 0.6915$

14. 参考书上的答案

### 3.4 多个随机变量的联合概率密度

#### 3.4.1 联合分布函数

#### 3.4.2 期望

#### 3.4.3 多于两个随机变量的情况

#### 习题

15. i. $f_{X,Y}(x,y) = \frac2{\pi r^2}$
    ii. $f_Y(y) = \int_{-r}^r f_{X,Y}(x,y) dx = \frac4{\pi r^2} \sqrt{r^2-y^2}$，$E[Y] = \left. -\frac4{3 \pi r^2}(r^2-y^2)^{3/2} \right|_0^r = \frac{4r}{3\pi}$
    iii. $E[Y] = \int_B y f_{X,Y}(x,y) dxdy = 0$

16. 设X是与格子相交的边数，X的期望：
    $$
    E[X] = (P(A)+P(B)-2P(A \cap B)) + 2P(A \cap B) = P(A)+P(B) = \frac{2l}{\pi}(\frac1a+\frac1b)
    $$
    与至少一条边相交的概率：
    $$
    P(A \cap B) = \frac{l^2}{\pi a b} \\
    P(A \cup B) = P(A) + P(B) - P(A \cap B) = \frac{l}{\pi a b}(2a + 2b - l)
    $$

17. 参考书上的答案

### 3.5 条件

#### 3.5.1 以事件为条件的随机变量

#### 3.5.2 一个随机变量对另一个随机变量的条件

#### 3.5.3 条件期望

#### 3.5.4 独立性

#### 习题

