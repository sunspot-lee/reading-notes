---
tags: [Python]
title: Pandas
created: '2019-11-11T02:19:35.858Z'
modified: '2019-11-11T02:19:42.302Z'
---

# Pandas

## Series

* 1D数据结构，标量的容器。

* 从ndarray创建

```python
s = pd.Series(d, index=index)
```

要指定index，或者缺省为[0,1,2...]

* 从dict创建

```python
s = pd.Series(d)
```

dict的key成为index

## DataFrame

2D数据结构，Series的容器