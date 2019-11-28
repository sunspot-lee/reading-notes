---
tags: [Python]
title: Pandas
created: '2019-11-11T02:19:35.858Z'
modified: '2019-11-21T07:28:51.952Z'
---

# Pandas

## Series

* 带标签的1D数据结构，标量的容器。
* Series和ndarray共有的属性：T、dtype、nbytes、ndim、shape、size
* Series和DataFrame共有ndarray没有的属性：axes、dtypes、empty、index、values
* Series独有的属性：
  * array
  * hasnans 是否包含NaN
  * is_monotonic 是否递增
  * is_monotonic_decreasing 是否递减
  * is_unique 是否无重复
  * name

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
