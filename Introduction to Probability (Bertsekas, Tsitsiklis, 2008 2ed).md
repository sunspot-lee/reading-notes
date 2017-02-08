## 1 样本空间与概率

### 1.2 概率模型

试验产生试验结果，所有可能结果形成**样本空间**，样本空间的子集称为**事件**。

为每一个事件A确定一个数P(A)，称为事件A的**概率**。概率要满足以下概率公理：

1. **非负性**。对一切事件A，满足 $P(A) \ge 0$
2. **可加性**。设事件A和事件B对应的集合互不相交，则 $P(A \cup B) = P(A) + P(B)$
3. **归一性**。整个样本空间的概率为1

建立概率模型时可以任意定义概率，只要符合概率公理。不同的概率定义可能导致不同的结论。参考贝特朗悖论。

由概率公理导出的性质：

1. 若$A \subset B$则$P(A) \le P(B)$
2. $P(A \cup B) = P(A) + P(B) - P(A \cap B)$
3. $P(A \cup B) \le P(A) + P(B)$
4. $P(A \cup B \cup C) = P(A) + P(A^c \cap B) + P(A^c \cap B^c \cap C)$

#### 习题

5. 天才 P(A)=0.6，喜欢巧克力 P(B)=0.7，$P(A \cap B)=0.4$，$
   P(A^c \cap B^c) = 1-P(A \cup B) = 1-(P(A)+P(B)-P(A \cap B)) = 1-(0.6+0.7-0.4) = 0.1$

6. 偶数A，奇数B，$P(A) = 2 P(B) \Rightarrow P(A) = 2/3, P(B) = 1/3$，
   概率：$P(2)=P(4)=P(6)=2/9, P(1)=P(3)=P(5)=1/9$，
   小于4：$P(C) = P(\{1,2,3\}) = 1/9 + 2/9 + 1/9=4/9$

7. 样本空间是$\{E,OE,OOE,\cdots\}$

8. 中文版翻译错误，连续赢两场才能取胜。
   对手b在第2个时的取胜概率：$p_a p_b + (1-p_a) p_b p_c = p_b (p_a+p_c-p_a p_c)$，a和c的先后次序不影响胜率
   b第2个的胜率高于a和c第2个的胜率要求：
   $$
   p_b (p_a + p_c - p_a p_c) \ge p_a (p_b + p_c - p_b p_c) \\
   p_b (p_a + p_c - p_a p_c) \ge p_c (p_a + p_b - p_a p_b)
   $$
   简化得到$p_2 \ge p_1$且$p_2 \ge p_3$

9. a. $A = A \cap \Omega = A \cap (\bigcup_{i=1}^n S_i) = \bigcup_{i=1}^n (A \cap S_i)$，又$\{A \cap S_i\}$互不相容，所以$P(A) = \sum_{i=1}^n P(A \cap S_i)$
   b. $\{B \cup C, B^c \cap C^c\}$是对$\Omega$的一个分割，所以
   $$
   \begin{align} P(A) &= P(A \cap (B \cup C)) + P(A \cap (B^c \cap C^c)) \\
   &= P(A \cap B \cup A \cap C) + P(A \cap B^c \cap C^c) \\
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
    b. 略

12. a. 证明：
    $$
    \begin{align} P(A \cup B \cup C) &= P(A) + P(B \cup C) - P(A \cap (B \cup C)) \\
    &= P(A) + P(B) + P(C) - P(B \cap C) - P(A \cap B \cup A \cap C) \\
    &= P(A) + P(B) + P(C) - P(B \cap C) - P(A \cap B) - P(A \cap C) + P(A \cap B \cap A \cap C) \\
    &= P(A) + P(B) + P(C) - P(A \cap B) - P(A \cap C) - P(B \cap C) + P(A \cap B \cap C) \end{align}
    $$
    b. 略

13. 参考书上的答案

### 1.3 条件概率

给定事件B发生之下事件A的概率称为**条件概率P(A|B)**
$$
P(A|B) = \frac{P(A \cap B)}{P(B)}
$$

#### 习题

14. a. 6/36 = 1/6
    b. 2/6 = 1/3
    c. 1/6+1/6-1/36=11/36
    d. $2 \times \frac16 \times \frac56 / \frac56 = \frac13$

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

19. 如果$j \ne i$，在j号抽屉的概率是$p_j$，在j号而i号抽屉找不到的概率为1，在i号抽屉找不到的概率为$1-p_i d_i$，因此当在i号抽屉找不到时，在j号抽屉的概率是$\frac{p_j}{1-p_i d_i}$。如果$j=i$，在i号抽屉的概率是$p_i$，在i号而i号抽屉找不到的概率为$1-d_i$，在i号抽屉找不到的概率为$1-p_i d_i$，因此当在i号抽屉找不到时，在i号抽屉的概率是$\frac{p_i (1-d_i)}{1-p_i d_i}$。

20. a. i. $p_w p_w + (p_w (1-p_w) + (1-p_w) p_w) p_w = 3 p_w^2 - 2 p_w^3$，ii. $p_d p_d p_w = p_d^2 p_w$，iii. $p_w p_d + p_w (1-p_d) p_w + (1-p_w) p_w p_w = (2 p_w^2 + p_w p_d) - (p_w^3 + p_w^2 p_d)$
    b. 当$p_d > \frac{1 - 4 p_w^2 + 2 p_w^3}{2 p_w (1-p_w)}$时，即使$p_w < 1/2$，第3种策略的胜率也大于1/2。比如$p_w=0.45$，只要$p_d > 0.752$就行了。

21. 让$p(m,k)$为第一个取球的人在坛子里还剩k个黑球时的取胜概率，有：
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

25. **标准答案可疑，概率模型不完整。如果认为钱数的取值范围是$[0,\infty)$，算出来的期望将是无穷，无法作出决策**

26. a. $P(A|B) = P(A) = p$
    b. $P(C) = P(A) P(C|A) + P(A^c) P(C|A^c) = p(1-q) + (1-p)(1-q) 0.5 = \frac{1+p}2(1-q)$，所以
    $$
    P(A|C) = \frac{P(A) P(C|A)}{P(C)} = \frac{p(1-q)}{\frac{1+p}2(1-q)} = \frac{2p}{1+p} > p = P(A)
    $$

27. 参考标准答案

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

或者如果$P(B) > 0$，且$P(A|B) = P(A)$，称事件A和事件B相互独立。

如果A和B相互独立，则A和$B^c$也相互独立。

如果$P(C) > 0$，且$P(A \cap B | C) = P(A|C) P(B|C)$，称A和B在给定C之下**条件独立**。

或者如果$P(B|C) > 0$，且$P(A|B \cap C) = P(A|C)$，称A和B在给定C之下条件独立。

独立性并不蕴涵条件独立性，反之亦然。

如果$P(\bigcap_{i \in S}A_i) = \prod_{i \in S}P(A_i)$，对**任意$\{1,2,\cdots,n\}$的子集S**成立，称$A_1,A_2,\cdots,A_n$相互独立。

#### 习题

30. $P(S) = p^2 + 2 p(1-p)\frac12 = p$，所以两条和一条是一样的。

31. a. $P(S) = P(0|0) + P(1|1) = p(1-\epsilon_0) + (1-p)(1-\epsilon_1) = 1 - p \epsilon_0 - (1-p)\epsilon_1$
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

n个对象分成r组对象的分割数：$\binom{n}{n_1,n_2,\cdots,n_r} = \frac{n!}{n_1! n_2! \cdots n_r!}$

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

**伯努利随机变量**

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

**二项随机变量**

概率模型有两个试验结果{A, B}，A出现的概率为p，B出现的概率为1-p。

二项随机变量为n次试验后A出现的次数。

二项随机变量的PMF为：
$$
p_X(k) = \binom{n}{k} p^k (1-p)^{n-k}, \quad k=0,1,\cdots,n
$$

**几何随机变量**

概率模型有两个试验结果{A, B}，A出现的概率为p，B出现的概率为1-p。

几何随机变量为连续试验直到A出现的试验次数。

几何随机变量的PMF为：
$$
p_X(k) = (1-p)^{k-1} p, \quad k=1,2,\cdots
$$

**泊松随机变量**

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

设$Y=g(X)$是随机变量X的函数，则Y也是一个随机变量，且
$$
p_Y(y) = \sum_{\{x|g(x)=y\}} p_X(x)
$$

#### 习题

13. $p(x)=\binom{5}{x-2} (\frac12)^5, x=2,3,\cdots,7$

14. a. $p_Y(0)=\frac4{10}$，$p_Y(1)=p_Y(2)=\frac3{10}$。
    b. $p_Y(0)=p_Y(1)=\frac15$，$p_Y(2)=\frac1{10}$，$p_Y(5)=\frac12$

15. $p_Y(0)=\frac1{2n+1}$，$p_Y(y)=\frac2{2n+1}, y=ln(a), 2ln(a, \cdots, n ln(a))$

### 2.4 期望、均值和方差

**期望**：
$$
E[X]=\sum_x x p_X(x)
$$

**n阶矩**：
$$
E[X^n] = \sum_x x^n p_X(x)
$$

**期望和n阶矩不一定存在**。

**方差**：
$$
\begin{align} var(X) &= E[(X - E[X])^2] \\ &= E[X^2] - (E[X])^2 \end{align}
$$

**标准差**：
$$
\sigma_X = \sqrt{var(X)}
$$

**随机变量函数的期望**：
$$
E[g(X)] = \sum_x g(X) p_X(x)
$$
除非$g(X)$是线性函数，一般情况下$E[g(X)]$不等于$g(E[X])$。令$Y = a X + b$，则
$$
E[Y] = a E[X] + b \\
var(Y) = a^2 var(X)
$$

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

### 2.7 独立性

**随机变量与事件的相互独立性**

如果$\forall x, P(X=x \text{ and } A) = P(X=x) P(A) = p_X(x) P(A)$，称随机变量X和事件A相互独立。

如果$P(A)>0$，独立性等价于$\forall x, p_{X|A}(x) = p_X(x)$。

**随机变量之间的相互独立性**

如果$\forall (x,y), p_{X,Y}(x,y) = p_X(x) p_Y(y)$，称随机变量X和Y相互独立。

如果$p_Y(y)>0$，独立性等价于$\forall x, p_{X|Y}(x|y) = p_X(x)$。

如果X和Y相互独立，则：
$$
\begin{align} E[X Y] &= E[X] E[Y] \\
E[g(X) h(Y)] &= E[g(X)] E[h(Y)] \\
var(X + Y) &= var(X) + var(Y) \end{align}
$$

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

## 3 一般随机变量

### 3.1 连续随机变量和概率密度函数

对于随机变量X，若存在一个非负函数$f_X$，使得$P(X \in B) = \int_B f_X(x) dx$对每一个实数轴上的集合B都成立，则称X为**连续随机变量**，函数$f_X$为X的**概率密度函数**(PDF)。

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

**指数随机变量**
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
   &= \left. -\frac2{\lambda^2} e^{-\lambda x}(1+\lambda x) - x^2 e^{-\lambda x} \right|_0^\infty \\
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

#### 习题

18. a. $E[X] = \int_1^3 x f_X(x) dx = \left. \frac{x^3}{12} \right|_1^3 = \frac{13}{6}$，$P(A) = \int_2^3 f_X(x) dx = \frac58$，$E[X|A] = \frac{\int_2^3 \frac{x^2}{4} dx}{P(A)} = \frac{38}{15}$
    b. $E[Y] = \int_1^3 x^2 f_X(x) dx = 5$，$E[Y^2] = \int_1^3 x^4 f_X(x) dx = \frac{91}3$，$var(Y) = E[Y^2] - (E[Y])^2 = \frac{16}3$

19. 中文版翻译错误。
    a. $\int_1^2 f_X(x) dx = 1 \Rightarrow \left. -\frac{c}{x} \right|_1^2 = 1 \Rightarrow c = 2$
    b. $P(A) = \int_{1.5}^2 2x^{-2} dx = \frac13$，$f_{X|A}(x) = \frac{2x^{-2}}{\frac13} = 6x^{-2}, 1.5 < x \le 2$
    c. $E[Y|A] = \frac{\int_{1.5}^2 2 dx}{\frac13} = 3$，$E[Y^2|A] = 3\int_{1.5}^2 2x^2 dx = 9.25$，$var(Y) = 9.25-3^2=0.25$

20. $P(A<5)(5 + E[B]) + P(A \ge 5)(E[A+B]) = (1-e^{-5/30})(5+30)+e^{-5/30}(35+30) = 60.3945$

21. 中文版翻译错误。
    a. $f_{X,Y}(x,y) = f_Y(y) f_{X|Y}(x|y) = \frac1l \frac1y = \frac1{ly}$
    b. $f_X(x) = \int_x^l f_{X,Y}(x,y) dy = \frac1l \ln(l/x)$
    c. $E[X] = \int_0^l x f_X(x) dx = \frac{l}4$
    d. $E[X] = E[Y]E[X/Y] = \frac{l}2 \cdot \frac12 = \frac{l}4$

22. i. 设两个点的座标为X和Y：
    $P(\text{可以组成三角形})=2P(X<\frac12 \cap Y>\frac12)P(Y-X<\frac12 | X<\frac12 \cap Y>\frac12) = 2 \frac12 \frac12 \frac12 = \frac14$
    ii. 设第一点座标为X，第二点座标为Y：
    $P(\text{可以组成三角形})=P_X(x<\frac12)P_{Y|X}(\frac12<y<x+\frac12 | x<\frac12) = \int_0^{\frac12}\int_{\frac12}^{x+\frac12} \frac1{1-x} dy dx = \ln2-\frac12$
    iii. 概率是ii的2倍，是$2\ln 2 - 1$

23. a. $f_{X,Y}(x,y) = 2$
    b. $f_Y(y) = \int_0^{1-y} f_{X,Y}(x,y) dx = 2(1-y)$
    c. $f_{X|Y}(x|y) = \frac{f_{X,Y}(x,y)}{f_Y(y)} = \frac1{1-y}$
    d. $E[X|Y=y] = \frac{1-y}{2}$，$E[X] = \int_0^1 f_Y(y) E[X|Y] dy = \frac{1-E[Y]}2$
    e. $E[X] = E[Y] = \frac{1-E[X]}{2} \Rightarrow E[X] = \frac13$

24. 解：
    $$
    \begin{align}
    E[X|Y] &= \frac12 - \frac{y}4 \\
    E[X] &= \int_0^2 f_Y(y) E[X|Y] dy = \frac12 - \frac{E[Y]}4 \\
    E[Y|X] &= 1-x \\
    E[Y] &= \int_0^1 f_X(x) E[Y|X] dx = 1 - E[X] \\
    E[X] &= \frac13 \\
    E[Y] &= \frac23
    \end{align}
    $$

25. 解：
    $$
    \begin{align}
    f_{X,Y}(x,y) &= \frac1{2\pi\sigma^2} e^{-(x^2+y^2)/(2\sigma^2)} \\
    P(R>c) &= \int_0^{2\pi}\int_c^\infty f_{R,\Theta}(r,\theta) rdrd\theta = e^{-\frac{c^2}{2\sigma^2}} \\
    f_{X,Y|R>c}(x,y) &= \frac{f_{X,Y}(x,y)}{P(R>c)} = \frac1{2\pi\sigma^2} e^{-(x^2+y^2-c^2)/(2\sigma^2)}
    \end{align}
    $$

26. 书上的答案有疑问

27. 略

28. 参考书上的答案

29. 参考书上的答案

30. 参考书上的答案

31. 参考书上的答案

32. 参考书上的答案

33. 参考书上的答案

### 3.6 连续贝叶斯准则

假设连续随机变量X会影响连续随机变量Y，已知X的PDF是$f_X(x)$，已知X=x时Y的PDF是$f_{Y|X}(y|x)$，有：
$$
f_{X|Y}(x|y) = \frac{f_X(x) f_{Y|X}(y|x)}{f_Y(y)} = \frac{f_X(x) f_{Y|X}(y|x)}{\int_{-\infty}^\infty f_X(t) f_{Y|X}(y|t) dt}
$$

**关于离散随机变量的推断**

假设离散随机变量N会影响连续随机变量Y，已知N的PMF是$p_N(n)$，已知N=n时Y的PDF是$f_{Y|N}(y|n)$，有：
$$
P(N=n|Y=y) = \frac{p_N(n) f_{Y|N}(y|n)}{f_Y(y)} = \frac{p_N(n) f_{Y|N}(y|n)}{\sum_i p_N(i) f_{Y|N}(y|i)}
$$

#### 习题

34. a. $E[P] = \int_0^1 p f_P(p) dp = e-2$
    b. $f_{P|A}(p) = \frac{f_P(p) P(A|P=p)}{P(A)} = \frac{p^2 e^p}{e-2}$
    c. $E[P|A] = \int_0^1 f_{P|A}(p) P(P|P=p,A) dp = 0.786$

35. 参考书上的答案

|       | PMF                                      | E[...]                                   |
| ----- | ---------------------------------------- | ---------------------------------------- |
| X     | $p_X(x) = \sum_y p_{X,Y}(x,y) = \sum_y p_Y(y) p_{X \vert Y}(x \vert y)$ | $E[g(X)] = \sum_x g(x) p_X(x) = \sum_y p_Y(y) E[g(X) \vert Y]$ |
| (X,Y) | $p_{X,Y}(x,y) = P(X=x,Y=y) = p_Y(y) p_{X \vert Y}(x \vert y)$ | $E[g(X,Y)] = \sum_{(x,y)} g(x,y) p_{X,Y}(x,y)$ |
| X\|Y  | $p_{X \vert Y}(x \vert y) = P(X=x \vert Y=y) = \frac{p_{X,Y}(x,y)}{p_Y(y)}$ | $E[X \vert Y] = \sum_x x p_{X \vert Y}(x \vert y)$ |

## 4 随机变量的深入内容

### 4.1 随机变量函数的分布密度函数

**连续随机变量X的函数$Y=g(X)$的分布密度函数**：
$$
F_Y(y) = P(g(X) \le y) = \int_{\{x|g(x) \le y\}} f_X(x) dx \\ f_Y(y) = \frac{dF_Y(y)}{dy}
$$
如果$Y=aX+b$，则：
$$
f_Y(y) = \frac1{|a|} f_X(\frac{y-b}{a})
$$
如果$g(x)$严格单调并可微，则存在逆函数$h(y)$
$$
f_Y(y) = f_X(h(y)) \left| \frac{dh(y)}{dy} \right|
$$
如果$Z=X+Y$，当X和Y是独立的离散随机变量时：
$$
p_Z(z) = \sum_x p_X(x) p_Y(z-x)
$$
当X和Y是独立的连续随机变量时：
$$
f_Z(z) = \int_{-\infty}^\infty f_X(x) f_Y(z-x) dx
$$
如果X和Y是独立的正态随机变量，则X+Y也是正态随机变量，且均值为$\mu_x+\mu_y​$，方差为$\sigma_x^2+\sigma_y^2​$。

#### 习题

1. $f_X(x)=\frac12$，令$Y=\sqrt{|X|}$，有：
   $$
   F_Y(y) = P(\sqrt{|X|} \le y) = P(-y^2 \le X \le y^2) = \frac12 \cdot 2y^2 = y^2, \quad 0 \le y \le 1 \\
   f_Y(y) = \begin{cases} 2y, & 0 \le y \le 1 \\ 0, & \text{else}\end{cases}
   $$
   令$Z=-\ln{|X|}$，有：
   $$
   F_Z(z) = P(-\ln{|X|} \le z) = P(X \le -e^{-z} \cup e^{-z} \le X) = 1-1e^{-z}, \quad z \ge 0 \\
   f_Z(z) = \begin{cases} e^{-z}, & z \ge 0 \\ 0, & \text{else} \end{cases}
   $$

2. 令$Y=e^X$，有$f_Y(y) = f_X(\ln{y}) \frac1y, y>0$，当X是[0,1]之间的均匀分布时，$f_Y(y) = \frac1y, 1 \le y \le e$

3. $F_Y(y) = P(|X|^{1/3} \le y) = P(-y^3 \le X \le y^3) = F_X(y^3) - F_X(-y^3)$，所以$f_Y(y) = 3y^2(f_X(y^3)+f_X(-y^3)), y \ge 0$
   $F_Y(y) = P(|X|^{1/4} \le y) = P(-y^4 \le X \le y^4) = F_X(y^4) - F_X(-y^4)$，所以$f_Y(y) = 4y^3(f_X(y^4)+f_X(-y^4)), y \ge 0$

4. 当$y \le 5$时，$F_Y(y) = P(5-y \le X \le 5 \cup 20-y \le X \le 20) = F_X(5)-F_X(5-y)+F_X(20)-F_X(20-y)$
   当$5 \le y \le 15$时，$F_Y(y) = P(20-y \le X \le 20) = F_X(20)-F_X(20-y)$，所以：
   $$
   f_Y(y) = \begin{cases} f_X(5-y)+f_X(20-y), & 0 \le y \le 5 \\ f_X(20-y), & 5 \le y \le 15\end{cases}
   $$

5. 令$Z=|X-Y|$，$F_Z(z)=1-(1-z)^2, 0 \le z \le 1$，$f_Z(z)=2(1-z)$

6. 令$Z=|X-Y|$，$F_Z(z)=z, 0 \le z \le 1$，$f_Z(z)=1$

7. 根据第5题的答案，$E[Z]=\int_0^1 z \cdot 2(1-z) dz = \left. z^2-\frac23z^3 \right|_0^1=\frac13$

8. 解：
   $$
   \begin{align}
   F_Z(z) &= P(X+Y \le z) \\
   &= \int_0^z P(X=x)(1-P(Y \ge z-x)) dx \\
   &= \int_0^z \lambda e^{-\lambda x}(1-e^{-\lambda(z-x)}) dx \\
   &= 1-e^{-\lambda z}-\lambda z e^{-\lambda z} \\
   f_Z(z) &= \lambda^2 z e^{-\lambda z} \end{align}
   $$

9. 解：
   $$
   \begin{align} f_{X-Y}(z) &= \int_{-\infty}^\infty f_X(x) f_Y(x-z) dx \\
   &= \begin{cases} \int_z^\infty \lambda e^{-\lambda x} \mu e^{-\mu(x-z)} dx, & z \ge 0 \\
   \int_0^\infty \lambda e^{-\lambda x} \mu e^{-\mu(x-z)} dx, & z<0 \end{cases} \\
   &= \begin{cases} \frac{\lambda \mu}{\lambda + \mu} e^{-\lambda z}, & z \ge 0 \\
   \frac{\lambda \mu}{\lambda + \mu} e^{-\mu z}, & z<0 \end{cases} \end{align}
   $$

10. 解：
    $$
    f_{X+Y}(z) = \sum_{x=1}^3 p_X(x) p_Y(z-x) = \frac13 (p_Y(z-1)+p_Y(z-2)+p_Y(z-3)) = \begin{cases} \frac16, & z=1 \\ \frac5{18}, & z=2 \\ \frac13, & z=3 \\ \frac16, & z=4 \\ \frac1{18}, & z=5 \end{cases}
    $$

11. 证明：
    $$
    \begin{align} f_{X+Y}(z) &= \sum_{x=0}^\infty p_X(x) p_Y(z-x) \\
    &= \sum_{x=0}^z p_X(x) p_Y(z-x) \\
    &= \sum_{x=0}^z e^{-\lambda}\frac{\lambda^x}{x!} e^{-\mu}\frac{\mu^{z-x}}{(z-x)!} \\
    &= e^{-(\lambda+\mu)}\frac1{z!} \sum_{x=0}^z \binom{z}{x}\lambda^x \mu^{z-x} \\
    &= e^{-(\lambda+\mu)}\frac{(\lambda + \mu)^z}{z!} \end{align}
    $$

12. 参考标准答案

13. 参考标准答案

14. 证明：
    $$
    F_Z(z) = P(\min(X,Y) \le z) = 1 - P(X > z \cap Y > z) = 1-P(X > z) P(Y > z) = 1- e^{-\lambda z} e^{-\mu z} \\
    f_Z(z) = (\lambda + \mu) e^{-(\lambda + \mu)z}
    $$

15. 参考书上的答案

16. 参考书上的答案

### 4.2 协方差和相关

X和Y的**协方差**定义为：$cov(X,Y) = E[(X-E[X])(Y-E[Y])]$。

当$cov(X,Y)=0$时，说X和Y是不相关的。
$$
\begin{align} cov(X,Y) &= E[XY] - E[X]E[Y] \\
cov(X,X) &= var(X) \\
cov(X,aY+b) &= a \cdot cov(X,Y) \\
cov(X,Y+Z) &= cov(X,Y) + cov(X,Z) \end{align}
$$
X和Y相互独立则X和Y不相关，但是**X和Y不相关不一定X和Y相互独立**。

X和Y的**相关系数**定义为：$\rho(X,Y) = \frac{cov(X,Y)}{\sqrt{var(X)var(Y)}}$。

**随机变量和的方差**：
$$
\begin{align} var(X+Y) &= var(X) + var(Y) + 2cov(X,Y) \\
var(\sum_{i=1}^n X_i) &= \sum_{i=1}^n var(X_i) + \sum_{\{(i,j)|i \ne j\}} cov(X_i,X_j) \end{align}
$$

#### 习题

17. 证明：
    $$
    \begin{align} cov(X+Y,X-Y) &= E[(X+Y)(X-Y)] - E[X+Y]E[X-Y] \\
    &= E[X^2] - E[Y^2] - (E[X]+E[Y])(E[X]-E[Y]) \\
    &= var(X) - var(Y) \\
    &= 0 \end{align}
    $$

18. 解：
    $$
    \begin{align} \rho(R,S) &= \frac{cov(W+X,X+Y)}{\sqrt{var(W+X)var(X+Y)}} \\
    &= \frac{cov(W,X)+cov(W,Y)+cov(X,X)+cov(X,Y)}{\sqrt{(var(W)+var(X)+2cov(W,X))(var(X)+var(Y)+2cov(X,Y))}} \\
    &= \frac{var(X)}{2} \\
    &= \frac12 \\
    \rho(R,T) &= \frac{cov(W+X,Y+Z)}{\sqrt{var(W+X)var(Y+Z)}} = 0 \end{align}
    $$

19. 解：
    $$
    \begin{align} \rho(X,Y) &= \frac{cov(X,a+bX+cX^2)}{\sqrt{var(X)var(a+bX+cX^2)}} \\
    &= \frac{b \cdot var(X) + c \cdot cov(X,X^2)}{\sqrt{b^2+2c^2}} \\
    &= \frac{b}{\sqrt{b^2+2c^2}}\end{align}
    $$

20. 参考书上的答案

21. 参考书上的答案

### 4.3 再论条件期望和条件方差

依赖于随机变量Y的随机变量X的条件期望$E[X|Y]$也是随机变量

**重期望法则**
$$
E[E[X|Y]] = E[X]
$$
对任意给定的函数g，有：$E[X g(Y)|Y] = g(Y) E[X|Y]$

给定Y，如果把对X的估计记为$\hat X = E[X|Y]$，**估计误差**就定义为$\tilde X = \hat X - X$，$\hat X$和$\tilde X$不相关，且$var(X)=var(\hat X)+var(\tilde X)$

**条件方差**：$var(X|Y) = E[(X-E[X|Y])^2|Y] = E[\tilde X^2|Y]$

**全方差法则**
$$
var(X) = E[var(X|Y)] + var(E[X|Y])
$$

#### 习题

22. $p(1+2p-1)+(1-p)(1-(2p-1))=(2p-1)^2+1$，经过n次赌博，$((2p-1)^2+1)^n x$

23. a. $P(X \le 1) \cdot 0 + P(X>1) \cdot E[X-1|X>1] = 0.25$
    b. $P(X \le 1) \cdot 3 + P(X>1) \cdot E[\frac{3-X}2|X>1] = \frac{15}8$
    c. 设$p=P(X>1.75)=\frac18$，约会次数期望是$\frac1p+\frac1p=\frac2p=16$

24. a. $E[X] = E[E[X|\lambda]] = E[\frac1\lambda] = E[5-y] = 5-2 = 3$
    b. $E[T] = E[y+X] = 2+3 = 5$
    c. 参考标准答案

25. 参考书上的答案

26. 参考书上的答案

27. 参考书上的答案

28. 参考书上的答案

### 4.4 矩母函数

随机变量X的**矩母函数**是参数s的函数$M_X(s)$
$$
M_X(s) = E[e^{sX}]
$$

矩母函数可用于计算随机变量的矩
$$
\left. \frac{d^n}{ds^n}M(s) \right|_{s=0} = E[X^n]
$$

如果X仅取非负整数，有
$$
\lim_{s \rightarrow -\infty} M_X(s) = P(X=0)
$$

**矩母函数可逆的条件**：如果存在一个正数a，对在区间$[-a,a]$中的任意s，$M_X(s)$都是有限的，则矩母函数$M_X(s)$唯一的决定X的分布函数。

**随机变量的线性函数**
$$
M_{aX+b}(s) = e^{sb} M_X(sa)
$$

**独立随机变量的和**
$$
M_{X+Y}(s) = M_X(s) M_Y(s)
$$

**联合分布随机变量**
$$
M_{X_1,X_2}(s_1,s_2) = E[e^{s_1 X_1 + s_2 X_2}]
$$
**伯努利分布随机变量**，$k=0,1$
$$
p_X(k) = \begin{cases} p, & k=1 \\ 1-p, & k=0 \end{cases}, \quad M_X(s) = 1-p+pe^s
$$
**二项分布随机变量**，$k=0,1,\cdots,n$
$$
p_X(k) = \binom{n}{k}p^k(1-p)^{n-k}, \quad M_X(s) = (1-p+pe^s)^n
$$
**几何分布随机变量**，$k=1,2,\cdots$
$$
p_X(k) = p(1-p)^{k-1}, \quad M_X(s) = \frac{p e^s}{1-(1-p) e^s}
$$
**泊松分布随机变量**，$k=0,1,\cdots$
$$
p_X(k) = e^{-\lambda}\frac{\lambda^k}{k!}, \quad M_X(s) = e^{\lambda (e^s-1)}
$$
**离散均匀分布随机变量**，$k=a,a+1,\cdots,b$
$$
p_X(k) = \frac1{b-a+1}, \quad M_X(s) = \frac{e^{as}}{b-a+1} \cdot \frac{e^{(b-a+1)s}-1}{e^s-1}
$$

**连续均匀分布随机变量**，$a \le x \le b$
$$
f_X(x) = \frac1{b-a}, \quad M_X(s) = \frac1{b-a} \cdot \frac{e^{sb}-e^{sa}}{s}
$$
**指数分布随机变量**，$x \ge 0$
$$
f_X(x) = \lambda e^{-\lambda x}, \quad M_X(s) = \frac{\lambda}{\lambda - s}, \quad s < \lambda
$$
**正态分布随机变量**，$-\infty<x<\infty$
$$
f_X(x) = \frac1{\sqrt{2\pi}\sigma} e^{-(x-\mu)^2/{2\sigma^2}}, \quad M_X(s) = e^{(\sigma^2 s^2/2) + \mu s}
$$

#### 习题

29. $M_X(s) = \frac12 e^s + \frac14 e^{2s} + \frac14 e^{3s}$
    $E[X] = \frac12 + \frac14 \cdot 2 + \frac14 \cdot 3 = \frac74$
    $E[X^2] = \frac12 + \frac14 \cdot 2^2 + \frac14 \cdot 3^2 = \frac{15}4$
    $E[X^3] = \frac12 + \frac14 \cdot 2^3 + \frac14 \cdot 3^3 = \frac{37}4$

30. $E[X^3] = \left. (3s+s^3)e^{s^2/2} \right|_{s=0} = 0$
    $E[X^4] = \left. (3+6s^2+s^4)e^{s^2/2} \right|_{s=0} = 3$

31. $E[X^3] = \left. \frac{6\lambda}{(\lambda-s)^4} \right|_{s=0} = \frac{6}{\lambda^3}$
    $E[X^4] = \left. \frac{24\lambda}{(\lambda-s)^5} \right|_{s=0} = \frac{24}{\lambda^4}$
    $E[X^5] = \left. \frac{120\lambda}{(\lambda-s)^6} \right|_{s=0} = \frac{120}{\lambda^5}$

32. a. (2)不是矩母函数，因为$M(0) \ne 1$
    b. $P(X=0) = \lim_{s \rightarrow -\infty} M(s) = e^{2(e^{-1}-1)}$

33. $f_X(x) = \frac23 e^{-2x} + 2 e^{-3x}$

34. 用卷积方法：
    $$
    \begin{align}
    f_X(x) &= p_1 P(X_2+X_3=x-1) + (1-p_1) P(X_2+X_3=x) \\
    &= p_1 p_2 P(X_3=x-2) + p_1(1-p_2)P(X_3=x-1) + (1-p_1)p_2 P(X_3=x-1) + (1-p_1)(1-p_2)P(X_3=x) \\
    &= \begin{cases} (1-p_1)(1-p_2)(1-p_3), & x=0 \\
    p_1(1-p_2)(1-p_3)+(1-p_1)p_2(1-p_3)+(1-p_1)(1-p_2)p_3, & x=1 \\
    p_1 p_2(1-p_3) + p_1(1-p_2)p_3 + (1-p_1)p_2 p_3, & x=2 \\
    p_1 p_2 p_3, & x=3 \end{cases} 
    \end{align}
    $$
    用矩母函数方法：
    $$
    M_X(s) = (1-p_1+p_1 e^s)(1-p_2+p_2 e^s)(1-p_3+p_3 e^s)
    $$

35. $M_X(0) = 1 \Rightarrow c \cdot \frac92 = 1 \Rightarrow c = \frac29$
    $E[X] = \left. \frac{2 e^s \left(24 e^s+14 e^{2 s}-4 e^{3 s}+3\right)}{9 \left(e^s-3\right)^2} \right|_{s=0} = \frac{37}{18}$
    $M_X(s) = \frac29(3+4e^{2s}+2e^{3s})\frac13(1+\frac{e^s}3+\frac{e^{2s}}9+\cdots)$
    所以$p_X(0)=\frac29$，$p_X(1)=\frac2{27}$
    $E[X] = p_X(0) \cdot 0 + (1-p_X(0)) E[X|X \ne 0]$，所以$E[X|X \ne 0] = E[X]/(1-p_X(0)) = \frac{37}{14}$

36. a. U是Y和Z的混合随机变量，$M_U(s) = \frac13 M_Y(s) + \frac23 M_Z(s) = \frac13 \frac2{2-s} + \frac23 e^{3(e^s-1)}$
    b. $M_{2Z+3}(s) = e^{3s} M_Z(2s) = e^{3(e^{2s}+s-1)}$
    c. $M_{Y+Z}(s) = M_Y(s)M_Z(s) = =frac2{2-s} e^{3(e^s-1)}

37. 参考标准答案

38. 参考书上的答案

39. 参考书上的答案

40. 参考书上的答案

### 4.5 随机数个相互独立的随机变量之和

记$X_1,X_2,\cdots,X_N$为均值$\mu$、方差$\sigma^2$的同分布随机变量，N为取正整数的随机变量，所有这些随机变量相互独立。记$Y=X_1+X_2+\cdots+X_N$，那么：

* $E[Y] = E[X]E[N]$
* $var(Y) = var(X)E[N] + (E[X])^2var(N)$
* Y的矩母函数$M_Y(s)$可以通过把N的矩母函数$M_N(s)$中的$e^s$全部替换为X的矩母函数$M_X(s)$得到。

#### 习题

41. a. $M_N(s) = e^{\lambda(e^s-1)}$，$M_X(s) = \frac{e^s-1}s$，所以$M_Y(s) = e^{\lambda(\frac1s (e^s-1)-1)}$
    b. $E[Y] = \lambda/2$
    c. $E[Y] = E[X]E[N] = \lambda \frac12 = \lambda/2$

42. 参考标准答案

43. 参考标准答案

44. a. $E[N] = E[K]E[M]$，$var(N) = var(K)E[M] + (E[K])^2var(M)$
    b. $E[Y] = E[X]E[N] = E[X]E[K]E[M]$，$var(Y) = var(X)E[N] + (E[X])^2var(N) = var(X)E[K]E[M] + (E[X])^2(var(K)E[M]+(E[K])^2var(M))$
    c. 略

45. 参考书上的答案

## 5 极限理论

### 5.1 马尔可夫和切比雪夫不等式

**马尔可夫不等式**：设随机变量X只取非负值，则对任意$a>0$，$P(X \ge a) \le \frac{E[X]}{a}$。

**切比雪夫不等式**：设随机变量X的均值为$\mu$，方差为$\sigma^2$，则对任意$c>0$，$P(|X-\mu| \ge c) \le \frac{\sigma^2}{c^2}$。

#### 习题

1. a. $var(M_n) = \frac{var(X_i)}{n} = \frac1n = 0.01^2$，要求容量10000
   b. $P(|M_n - h| \ge 0.05) \le \frac{var(M_n)}{0.05^2} \le 0.01$，所以要求$var(M_n) \le 0.005^2$，要求容量40000
   c. $var(X_i) \le \frac{0.6^2}4 = 0.09$，a的要求变为900，b的要求变为3600

2. 参考书上的答案

3. 参考书上的答案

### 5.2 弱大数定理

设$X_1,X_2,\cdots,X_n,\cdots$独立同分步，均值为$\mu$，则对任意的$\epsilon>0$，当$n \rightarrow \infty$时：
$$
P(|M_n - \mu| \ge \epsilon) = P(\left| \frac{X_1+\cdots+X_n}n - \mu \right| \ge \epsilon) \rightarrow 0
$$

#### 习题

4. a. $\epsilon$缩小为原来的一半，对应$\sigma^2$缩小为原来的$\frac14$，对应n放大为原来的4倍
   b. $\delta$缩小为原来的一半，对应$\sigma^2$缩小为原来的$\frac12$，对应n放大为原来的2倍

### 5.3 依概率收敛

设$X_1,X_2,\cdots,X_n,\cdots$是随机变量序列(不必相互独立)，a为一实数，如果对任意的$\epsilon>0$，有：
$$
\lim_{n \rightarrow \infty} P(|X_n-a| \ge \epsilon) = 0
$$
则称$X_n$**依概率收敛**于a。

也可以这样定义：对任意$\epsilon > 0$和$\delta > 0$，存在$n_0$，使得对所有的$n \ge n_0$，都有
$$
P(|X_n-a| \ge \epsilon) \le \delta
$$
称$\epsilon$为**精度**，$\delta$为**置信水平**。

可以证明，如果所有的$X_n$有相同的期望，并且方差$var(X_n)$趋于0，则$X_n$依概率收敛于$\mu$。

注意：$X_n$依概率收敛于a，不一定有$E[X_n]$也收敛于a。

5. a. 令$a=0$，$P(|Y_n-0| \ge \epsilon) = P(|X_n| \ge n\epsilon) = \max(1-n\epsilon,0)$，所以$Y_n$依概率收敛于0
   b. 令$a=0$，$P(|Y_n-0| \ge \epsilon) = P(|X_n| \ge \sqrt[n]\epsilon) = 1-\sqrt[n]\epsilon$，所以$Y_n$依概率收敛于0
   c. 令$a=0$，$P(|Y_n-0| \ge \epsilon) \le P((\max(|X_1|,\cdots,|X_n|))^n \ge \epsilon) = 1-\sqrt[n]\epsilon$，所以$Y_n$依概率收敛于0
   d. 令$a=1$，$P(|Y_n-1| \ge \epsilon) = P(1-X_1>\epsilon) \cdots P(1-X_n>\epsilon) = (\frac{1-\epsilon}2)^n$，所以$Y_n$依概率收敛于0

6. 参考书上的答案

7. 参考书上的答案

### 5.4 中心极限定理

设$X_1,X_2,\cdots,X_n,\cdots​$是独立同分布的随机变量序列，均值为$\mu​$，方差为$\sigma^2​$，记$Z_n=\frac{X_1+\cdots+X_n-n\mu}{\sqrt n \sigma}​$，则$Z_n​$的分布函数的极限是标准正太分布函数。

#### 习题

8. $P(X_1+\cdots+X_{100} \ge 55.5) = P(\frac{X_1+\cdots+X_{100} - 50}{\sqrt{100}\cdot 1/2} \ge \frac{55.5-50}{\sqrt{100}\cdot 1/2}) = 1 - \Phi(1.1) \approx 0.1357$

9. a. $P(X \le 5.5) = P(\frac{X-50 \cdot 0.05}{\sqrt{50(0.05-0.05^2)}} \le \frac{5.5-2.5}{\sqrt{50(0.05-0.05^2)}}) \approx \Phi(1.947) \approx 0.9742$
   b. $\lambda = 50 \cdot 0.05 = 2.5$
   $P(X \le 5.5) = \sum_{k=0}^{5} e^{-\lambda}\frac{\lambda^k}{k!} \approx 0.958$

10. a. 中文版翻译错误。$P(X \le 439.5) = P(\frac{X-100 \cdot 5}{\sqrt{100 \cdot 9}} \le \frac{439.5-500}{30}) = \Phi(-2.0167) = 1-\Phi(2.0167) \approx 0.02187$
    b. $P(\frac{X_1+\cdots+X_n - 5n}{\sqrt{9n}} \ge \frac{200}{\sqrt{9n}})$，所以$\Phi(\frac{200}{3\sqrt{n}}) \ge 0.95$，所以$\frac{200}{3\sqrt{n}} \ge 1.64485$，$n \le 1642.7$
    c. $P(N \ge 220) = P(X_1+\cdots+X_{219} \le 1000) = \Phi(-2.1398) \approx 0.016184$

11. X-Y的期望为0，方差为$var(X-Y)=var(X)+var(Y)=\frac16$
    $P(|W-E[W]|<0.001)=\Phi(0.001 \cdot 4\sqrt{6}) - \Phi(-0.001 \cdot 4\sqrt{6}) \approx 0.007818$

12. 参考书上的答案

### 5.5 强大数定理

设$X_1,\cdots,X_n$是均值为$\mu$的独立同分步随机变量序列，则样本均值以概率1收敛于$\mu$，即：
$$
P(\lim_{n \rightarrow \infty} \frac{X_1+\cdots+X_n}{n} = \mu) = 1
$$

设$X_1,X_2,\cdots,X_n,\cdots$是随机变量序列(不必相互独立)，a为一实数，如果：
$$
P(\lim_{n \rightarrow \infty} X_n = a) = 1
$$
则称$X_n$**以概率1收敛**于a。
以概率1收敛蕴含依概率收敛，但反之不成立。

#### 习题

13. 参考书上的答案

14. 参考书上的答案

15. 参考书上的答案

16. 参考书上的答案

17. 参考书上的答案

18. 参考书上的答案

## 6 伯努利过程和泊松过程

### 6.1 伯努利过程

伯努利过程由一串伯努利试验组成，试验之间相互独立。

相邻两次试验成功的时间间隔T也服从几何分布。

第k次试验成功的时间Y等于k个独立几何分布随机变量之和，称为**帕斯卡分布**。
$$
\begin{align} p_Y(t) &= \binom{t-1}{k-1}p^k(1-p)^{t-k}, \quad t=k,k+1,\cdots\\
E[Y] &= \frac{k}{p} \\
var(Y) &= \frac{k(1-p)}{p^2} \end{align}
$$

#### 习题
1. a. $p_R(k) = \binom{n}{k}p^k(1-p)^{n-k}$，$E[R]=np$，$var(R)=np(1-p)$
   b. n>2，$p(1-p)^{n-1} + (1-p)p^{n-1}$
   c. n>2，$\binom{n}{1}p(1-p)^{n-1} + \binom{n}{1}(1-p)p^{n-1}$
   d. $E[R-G]=E[R]-E[G]=np-n(1-p)=n(2p-1)$，$var(R-G)=var(2R-n)=4np(1-p)$
   e. $p_R(k) = \binom{n-2}{k-2}p^{k-2}(1-p)^{n-k}$，$E[R]=2+(n-2)p$，$var(R)=(n-2)p(1-p)$

2. a. $\binom{6}{2}p^2(1-p)^4=0.2966$
   b. 3阶帕斯卡分布，$E[X]-3=\frac3p-3=12-3=9$
   c. 2阶帕斯卡分布，$p_X(8)p = \binom{8-1}{2-1}p^2(1-p)^6 p=0.01947$
   d. 参考标准答案

3. a. $p_1 = p_B p_{1|B} = 1/3$，$(1-p_1)^3p_1 = 0.09877$
   b. $p_B p_I = 0.1389$
   c. 5阶帕斯卡分布，$E[X]=5/p_1=15$
   d. 5阶帕斯卡分布，$E[X]=5/p_{1|B}=12.5$
   e. 用户1的第5个任务时经历的繁忙时间段数为X，则执行的用户2的任务数Y=X-5， $p_Y(y)=p_X(y+5)=\binom{y+5-1}{5-1}p_{1|B}^5(1-p_{1|B})^y$，$E[Y]=E[X]-5=7.5$，$var(Y)=var(X)=18.75$

4. 参考书上的答案

5. 参考书上的答案

6. 参考书上的答案

7. 参考书上的答案

### 6.2 泊松过程

一个到达过程，被称为强度为$\lambda$的泊松过程，如果具有如下性质：

* **时间同质性**。相同时间长度$\tau$内发生k次到达的概率都是一样的。
* **独立性**。不同时间段的到达次数是相互独立的。
* **小区间概率**。时间长度$\tau$内发生k次到达的概率$P(k,\tau)$满足：
$$
\begin{align} 
P(0,\tau) &= 1-\lambda\tau+o(\tau) \\
P(1,\tau) &= \lambda\tau+o_1(\tau) \\
P(k,\tau) &= o_k(\tau), \quad k=2,3,\cdots \\
\lim_{\tau \rightarrow 0} \frac{o(\tau)}{\tau} &= 0, \quad \lim_{\tau \rightarrow 0} \frac{o_k(\tau)}{\tau} = 0
\end{align}
$$

时间长度$\tau$内发生k次到达的概率$P(k,\tau)$为：
$$
P(k,\tau) = e^{-\lambda\tau} \frac{(\lambda\tau)^k}{k!}
$$
并且
$$
E[N_\tau] = \lambda\tau \\
var(N_\tau) = \lambda\tau
$$

第k次到达的时间Y等于k个独立指数分布随机变量之和，称为**埃尔朗分布**。
$$
\begin{align} f_Y(t) &= \frac{\lambda^k t^{k-1} e^{-\lambda t}}{(k-1)!}, \quad t \ge 0\\
E[Y] &= \frac{k}{\lambda} \\
var(Y) &= \frac{k}{\lambda^2} \end{align}
$$

| 到达时间    | 离散       | 连续             |
| ------- | -------- | -------------- |
| 到达次数    | 二项分布     | 泊松分布           |
| 相邻到达时间  | 几何分布     | 指数分布           |
| 第k次到达时间 | k阶帕斯卡分布  | k阶埃尔朗分布(或伽玛分布) |
| 到达率     | $p$/每次试验 | $\lambda$/单位时间 |

每次到达，都以概率q保留，或者概率1-q丢弃，这称为到达过程的分裂。参数p的伯努利过程分裂后是参数pq的伯努利过程，参数$\lambda$的泊松过程分裂后是参数$\lambda q$的泊松过程。

两个相互独立的到达过程，任何一个过程到达，都认为一个新过程的到达，这称为到达过程的合并。参数p和q的伯努利过程合并后是参数$p+q-pq$的伯努利过程，参数$\lambda_1$和$\lambda_2$的泊松过程合并后是参数$\lambda_1+\lambda_2$的泊松过程。

**随机数个独立同分布随机变量之和**

* 二项分布(m,q)个伯努利分布(p)随机变量之和是二项分布(m,pq)
* 泊松分布($\lambda$)个伯努利分布(p)随机变量之和是泊松分布($\lambda p$)
* 几何分布(q)个几何分布(p)随机变量之和是几何分布(pq)
* 几何分布(q)个指数分布($\lambda$)随机变量之和是指数分布($\lambda q$)

#### 习题

8. 服从每3小时$\lambda = 5+3*2 = 11$次的泊松分布

9. 5个指数分布随机变量的最小值符合$\lambda = 5\lambda = 1/8$的指数分布，前面有k对人在等待所以是k+1阶埃尔朗分布，等待期望是$\frac{k+1}{5\lambda}=8(k+1)$分钟

10. a. $P(0,2) = e^{-0.6*2}\frac{(0.6*2)^0}{0!} = 0.3012$
    b. $P(0,2)(1-P(0,3)) = e^{-1.2}(1-e^{-1.8}) = 0.2514$
    c. $1-P(0,2)-P(1,2) = 1-e^{-1.2}-e^{-1.2}1.2 = 0.3374$
    d. 前2小时$0.6*2=1.2$，后面$P(0,2)*1 = e^{-1.2} = 0.3012$，一共$1.5012$
    e. $4 + 1/0.6 = 5.667$

11. a. 参数$\lambda p$的指数分布
    b. $P(0,1) = e^{-\lambda p}$
    c. $\lambda p$

12. 每一种比萨被卖出的概率是$p = 1-e^{-\lambda/n}$，卖出种类数的期望是$np = n(1-e^{-\lambda/n})$

13. a. $P(9,t) = e^{-(\lambda_A+\lambda_B)t}\frac{((\lambda_A+\lambda_B)t)^9}{9!}$
    b. $E[N] = (\lambda_A+\lambda_B)t E[W] = \frac{11}{6}(\lambda_A+\lambda_B)t$
    c. 参数为$\lambda_A/6$的8阶埃尔朗分布
    d. $\binom{12}{8}(\frac{\lambda_A}{\lambda_A+\lambda_B})^8(\frac{\lambda_B}{\lambda_A+\lambda_B})^4$

14. a. $E[X] = 0.5E[X_A] + 0.5E[X_B] = 2/3$
    b. $P(0,t) = 0.5 e^{-t} + 0.5 e^{-3t}$
    c. $P(A|0) = \frac{P(A)P(0|A)}{P(0)} = \frac{0.5 e^{-t}}{0.5 e^{-t} + 0.5 e^{-3t}} = \frac1{1+e^{-2t}}$
    d. 参考标准答案
    e. $\binom{11}{3}(\frac12)^3(\frac12)8\frac12 = 0.04028$
    f. $\binom{12}{4}(\frac12)^4(\frac12)^8 = 0.1209$
    g. 参考标准答案
    h. 中文版翻译错误。
    一个A型灯泡的总寿命分布是参数1的2阶埃尔朗分布$f_A(t)=e^{-t}$
    两个B型灯泡的总寿命分布是参数3的2阶埃尔朗分布$f_{2B}(t)=9te^{-3t}$
    $P(2A<2B) = \int_0^\infty f_A(\tau)P(2B>\tau)d\tau = \int_0^\infty (1+3\tau)e^{-4\tau}d\tau = 7/16$
    i. B型灯泡个数服从二项分布，$E[T] = E[N]E[B] = 6/3 = 2$
    $var(T) = E[N]var(B) + (E[B])^2 var(N) = 6/9 + (1/3)^2 12/4 = 1$
    j. 第一个灯泡是A型的概率是$\frac1{1+e^{-2t}}$，是B型的概率是$\frac1{1+e^{2t}}$，期望是$t + \frac1{1+e^{-2t}} + \frac1{1+e^{2t}}\frac13 = t + \frac13 + \frac23\frac1{1+e^{-2t}}$

15. a. 参数为$(3+4)3=21$的泊松分布，均值为21，方差为21
    b. $p=\frac3{3+4}=\frac37$，$\binom{10}{3}(\frac37)^3(1-\frac37)^7 = 0.1879$
    c. 参数为$\frac{\lambda_A}{\lambda_A+\lambda_B}$的几何分布
    d. $P(T<t) = (1-t)^2$，$f_T(t) = -2(1-t)$
    e. 参考标准答案

16. a. N+1是$p=e^{-\lambda\tau}$的几何分布，$E[N]=e^{\lambda\tau}-1$
    b. 参考标准答案
    c. 参考标准答案

17. 参考标准答案

18. 参考书上的答案

19. 参考书上的答案

20. 参考书上的答案

21. 参考书上的答案

22. 参考书上的答案

23. 参考书上的答案

24. 参考书上的答案

25. 参考书上的答案

26. 参考书上的答案

27. 参考书上的答案

## 7 马尔可夫链

### 7.1 离散时间的马尔可夫链

马尔可夫链模型是随机变量序列$X_0,X_1,\cdots$，由以下特征确定：

* 状态集合$S=\{1,\cdots,m\}$
* 可能发生的状态转移$(i,j)$的集合，即由所有$p_{ij}>0$的$(i,j)$组成
* $p_{ij}$的取值(取正值)
* $P(X_{n+1}=j|X_n=i,X_{n-1}=i_{n-1},\cdots,X_0=i_0)=p_{ij}$

马尔可夫链可以由**转移概率矩阵**刻画，其第i行，第j列的元素为$p_{ij}$

给定当前状态i的条件下，n次状态转移后的状态是j的概率称为**n步转移概率**：
$$
r_{ij}(n)=P(X_n=j|X_0=i)
$$

#### 习题

1. 参考标准答案

2. 不是

3. 不是

### 7.2 状态的分类

**常返态**：如果从状态i可达的状态都可返回状态i，则称状态i为常返态。

把常返态扩展为**常返类**：从常返态可达的状态都是常返态，这些状态构成一个常返类。

属于一个常返类的任意两个状态互相可达。每个常返类都只进不出。

马尔可夫链的状态集合可以分解成一个或多个常返类，加上可能的一些非常返状态。任意状态至少可以到达一个常返态。

**有周期的常返类**：如果一个常返类R的状态能分成$d>1$个互不相交的子集$S_1,\cdots,S_d$，且所有的状态转移都是从子集$S_k$到子集$S_{k+1}$，或者从子集$S_d$到子集$S_1$，就称R是有周期的。

**无周期的常返类**：如果一个常返类R，当且仅当存在时刻n，使得对于任何$i,j \in R$，满足$r_{ij}(n)>0$，称R是无周期的。

一个常返类，或者是有周期的，或者是无周期的。

辨别一个常返类是有周期还是无周期：从常返类中的一个状态出发，经过n步可以返回原状态，设所有可能n值的最大公因数为d，如果$d=1$则常返类是无周期的，如果$d>1$则常返类是有周期的并且周期为d。

#### 习题

4. a. 以蜘蛛和苍蝇的距离n为状态，一共n+1个状态

   当$n>1$，$P(n \rightarrow n)=0.3$，$P(n \rightarrow n-1)=0.4$，$P(n \rightarrow n-2)=0.3$

   $P(1 \rightarrow 1)=0.6$，$P(1 \rightarrow 0)=0.$4，$P(0 \rightarrow 0)=1$

   b. 除了0都是非常返态

5. 有周期，1、3、5、8为子集1，2、4、6、7、9为子集2。

6. 参考书上的答案

7. 参考书上的答案

8. 参考书上的答案

9. 参考书上的答案

### 7.3 稳态性质

对非周期，单个常返类的马尔可夫链：

**稳态概率**：当n很大时，处于状态j的概率$r_{ij}(n)$趋于一个独立于初始状态i的极限值，称为稳态概率$\pi_j = \lim_{n \rightarrow \infty} r_{ij}(n)$

计算稳态概率：下面的平衡方程组的唯一解
$$
\begin{align}
\pi_j &= \sum_{k=1}^m \pi_k p_{kj}, \quad j=1,\cdots,m \\
1 &= \sum_{k=1}^m \pi_k
\end{align}
$$
对所有非常返态，$\pi_j=0$；对所有常返态，$\pi_j>0$。

**平稳分布**：稳态概率在状态空间中形成了概率分布，称为马尔可夫链的平稳分布。

如果初始状态是根据平稳分布选择的，那么未来任何时候的分布都具有相同的分布。

产生一个马尔可夫链的无限长的轨道，这个轨道到达状态j的长期频率就是$\pi_j$，发生从状态j转移到状态k的长期频率就是$\pi_j p_{jk}$。

**生灭过程**：生灭过程的状态空间为$\{0,1,\cdots,m\}$，状态转移只发生在相邻状态，或者状态保持不变。

生灭过程的平衡方程组可以化简：定义状态i转移到状态i+1的概率为$b_i$，状态i转移到状态i-1的概率为$d_i$，有局部平衡方程组：
$$
\pi_i b_i = \pi_{i+1} d_{i+1}, \quad i=0,1,\cdots,m-1
$$
利用它，得到：
$$
\pi_i = \pi_0 \frac{b_0 b_1 \cdots b_{i-1}}{d_1 d_2 \cdots d_i}, \quad i=1,\cdots,m
$$

#### 习题

10. 要求$0<b<1,0<r<1$
    第一个模型有，$\pi_1 b = \pi_2 r$，解得$\pi_1 = \frac{r}{r+b}, \pi_2 = \frac{b}{r+b}$
    第二个模型有
    $$
    \begin{align}
    \pi_1 &= \pi_1 (1-b) + \sum_{i=1}^{l-1}\pi_{2,i} r + \pi_{2,l} \\
    \pi_{2,1} &= \pi_1 b \\
    \pi_{2,i} &= \pi_{2,i-1} (1-r), \quad i=2,\cdots,l
    \end{align}
    $$
    解得
    $$
    \begin{align}
    \pi_1 &= \frac{r}{r+b(1-(1-r)^l)} \\
    \pi_{2,i} &= \pi_1 b (1-r)^{i-1}, \quad i=1,\cdots,l
    \end{align}
    $$

11. 设状态{1,2,3}分别对应难、中等、容易。解得$\pi_1=0.2, \pi_2 = \pi_3 = 0.4$

12. 标准答案可能出错了
    a. 设状态号等于身边的鱼竿数，构成一个生灭过程：0<->n<->1<->n-1<->...<->k，解得$\pi_i=\frac1{n+1}$
    b. $\pi_0 p = \frac{p}{n+1}$

13. a. 解得$\pi_1=0.2, \pi_2 = \pi_3 = 0.4$
    b. $\pi_1 0.6 + \pi_2 0.2 = 0.2$
    c. $\pi_1 1 + \pi_2 0.4 = 0.36$
    d. $\pi_2 0.2 / (\pi_1 0.6 + \pi_2 0.2) = 0.4$
    e. $\pi_2 0.4 / (\pi_1 1 + \pi_2 0.4) = \frac49$
    f. $(\pi_1 0.6 + \pi_2 0.2) / (\pi_1 0.6 + \pi_2 0.2 + \pi_2 0.3 + \pi_3 0.2) = 0.5$
    g. $(\pi_1 0.6 + \pi_3 0.2) / (\pi_1 0.6 + \pi_2 0.2 + \pi_2 0.3 + \pi_3 0.2) = 0.5$

14. a. $\pi_j p_{jk} \pi_l$
    b. $\frac{\pi_i p_{ij}}{\pi_j}$

15. 以白球个数为状态号，是一个生灭过程，$b_i=(1-\frac{i}{n})(1-\epsilon)$，$d_i=\frac{i}{n}(1-\epsilon)$，白球个数的稳态分布是p=0.5的二项分布，$\pi_j=\binom{n}{j}\frac1{2^n}$

16. 以第一个坛子中白球个数为状态号，是一个生灭过程，$p_{jj}=\frac{2j(m-j)}{m^2}$，$b_j=(\frac{m-j}{m})^2$，$d_{j+1}=(\frac{j+1}{m})^2$，得到
    $$
    \pi_j = \binom{m}{j}^2 \pi_0
    $$
    根据标准答案，是超几何分布

17. a. 从状态1出发，n=1时可以到达所有两个状态
    b. 略
    c. $\pi_1 = \frac{\beta}{\alpha+\beta}, \pi_2 = \frac{\alpha}{\alpha+\beta}$

18. 以门的使用天数为状态数，共m+1个状态，有平衡方程组
    $$
    \begin{align}
    \pi_0 &= \sum_{j=0}^{m-1} \pi_j p + \pi_m \\
    \pi_j &= \pi_{j-1} (1-p), \quad j=1,2,\cdots,m
    \end{align}
    $$
    解得
    $$
    \pi_0 = \frac{p}{1-(1-p)^{m+1}}
    $$

19. 参考书上的答案

20. 参考书上的答案

21. 参考书上的答案

22. 参考书上的答案

23. 参考书上的答案

24. 参考书上的答案

25. 参考书上的答案

26. 参考书上的答案

27. 参考书上的答案

### 7.4 吸收概率和吸收的期望时间

属于同一个常返类的所有常返态可以合并为一个吸收态。对每个常返类都合并为一个吸收态的马尔可夫链：

**吸收概率**：从状态i开始，最终到达吸收态s的概率称为吸收概率$a_i$。

计算吸收概率：下面的吸收概率方程组的唯一解
$$
\begin{align}
a_s &= 1 \\
a_i &= 0, \quad & \text{i是吸收态且}i \ne s \\
a_i &= \sum_{j=1}^m p_{ij}a_j, \quad & \text{i是非常返态}
\end{align}
$$
**平均吸收时间**：从状态i出发，首次到达某个常返态的平均步数称为平均吸收时间$\mu_i$。

计算平均吸收时间：下面的方程组的唯一解
$$
\begin{align}
\mu_i &= 0, \quad & \text{i是常返态} \\
\mu_i &= 1 + \sum_{j=1}^m p_{ij} \mu_j, \quad & \text{i是非常返态}
\end{align}
$$
**平均首访时间**：从状态i出发，首次到达常返态s的平均步数称为平均首访时间$t_i$。

计算平均首仿时间：下面的方程组的唯一解
$$
\begin{align}
t_s &= 0 \\
t_i &= 1 + \sum_{j=1}^m p_{ij}t_j, \quad i \ne s
\end{align}
$$
**平均回访时间**：从状态s出发，首次回到状态s的平均步数称为平均回访时间$t_s^*$。

计算平均回访时间：
$$
t_s^* = 1 + \sum_{j=1}^m p_{sj}t_j
$$

#### 习题

28. a. $p_{ii}=\frac{i}{m}$，$p_{ij}=\frac1{m}, i<j$
    b. 状态m是常返态，其它都是非常返态
    c. $t_i = m, i \ne m$

29. a. 状态转移矩阵自乘6次后得到$r_{11}(6)=\frac{182}{1125} \approx 0.1618$
    b.
    $$
    \begin{align}
    t_2 &= 1 + \frac13 t_2 + \frac23 t_3 \\
    t_3 &= 1 + t_4 \\
    t_4 &= 1 + \frac25 t_4
    \end{align}
    $$
    解得$t_2 = \frac{25}6$，所以$t_1^* = 1+t_2 = \frac{31}6$
    方差只与2到3和4到1的转移次数方差有关，这两个是几何分布，$var(T)=(1-\frac23)(\frac32)^2 + (1-\frac35)(\frac53)^2 = \frac{67}{36}$
    c. 连续两次状态改变的概率：$\pi_1\frac23+\pi_2\frac23+\pi_3\frac35+\pi_4\frac35=\frac{98}{155}$

30. a. {1,2,3}是非周期常返类，{6,7}是周期2常返类，4和5是非常返态
    b. 存在。$\pi_1=\frac6{13}$
    c. 不存在
    d. i. $\pi_1 0.5 + \pi_2 0.1 = \frac{18}{65}$
    ii. 中文版翻译不清楚。$\frac{\pi_2 0.1}{\pi_1 0.5 + \pi_2 0.1} = \frac16$
    iii. $\pi_1 + \pi_2 \frac{0.1}{0.1+0.5} = \frac7{13}$
    e. i. 到达{1,2,3}类的概率，$a_4=\frac{10}{23}$，到达{6,7}类的概率，$a_4=\frac{13}{23}$
    ii. $\mu_4=\frac{60}{23}$

31. 参考书上的答案

32. 参考书上的答案

33. 参考书上的答案

34. 参考书上的答案

35. 参考书上的答案

### 7.5 连续时间的马尔可夫链

连续时间马尔可夫链的假设：

* 从状态i转移到下一个状态的时间服从参数为$\nu_i$的指数分布，且独立于之前的历史过程和下一个状态。
* 从状态i转移到下一个状态j的概率是$p_{ij}$，且独立于之前的历史过程和转移的时间。

就是说，在状态i停留的时间服从参数为$\nu_i$的指数分布，状态i转移到状态j的概率为$p_{ij}$。

参数$\nu_i$是单位时间内跳出状态i的平均次数，称为跳出状态i的**转移速率**。

$q_{ij}=\nu_i p_{ij}$表示单位时间内从状态i转移到状态j的平均次数，称为从状态i到j的**转移速率**。

由于指数分布是无记忆的，自身转移没有意义，所以假设$p_{ii}=0$。

由于指数分布是无记忆的，从任意时刻t开始，给定当前的状态$X(t)$，过程的未来独立于过去。

**稳态概率**：下面的平衡方程组的唯一解

$$
\begin{align}
\pi_j \sum_{k \ne j}q_{jk} &= \sum_{k \ne j}\pi_k q_{kj}, \quad j=1,\cdots,m \\
1 &= \sum_{k=1}^m \pi_k
\end{align}
$$

#### 习题

36. 标准答案有错。
    a. 设状态号等于当前损坏的机器数，短时间$\delta$内从状态i转移到i+1的概率是$b_i=(m-i)\mu\delta$，从状态i转移到i-1的概率是$d_i=\lambda\delta$，根据平衡方程，$\pi_j=(\frac\mu\lambda)^j \frac{m!}{(m-j)!}\pi_0$，$\pi_m=(\frac\mu\lambda)^m m! \pi_0$。
    b. $m-\sum_{j=0}^m j\pi_j$

37. 标准答案有错。
    生灭过程，$\pi_j=\frac1{2^j}\pi_0$，$\pi_0=\frac{16}{31}$，期望等待时间为
    $$
    \frac{\frac12 \sum_{j=0}^3(j+1)\pi_j}{\sum_{j=0}^3\pi_j}=\frac{13}{15}
    $$

38. 设状态号等于当前等待的用户数，短时间$\delta$内从状态i转移到i+1的概率是$b_i=(m-i)\lambda\delta$，从状态i转移到i-1的概率是$d_i=\mu\delta$，根据平衡方程，$\pi_j=(\frac\lambda\mu)^j \frac{m!}{(m-j)!}\pi_0$

39. 参考书上的答案