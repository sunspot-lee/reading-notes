# 文档

`np.info(obj)` 看文档

`np.source(obj)` 看源代码

`np.lookfor(what)` 用关键字搜索文档

# ndarray

numpy的中心数据结构是ndarray，它描述的是一个多维同质数组。
## 构造ndarray

## ndarray的属性和方法

### 属性

#### 内存布局属性

* flags: 常用的子属性有writeable
* shape: 形状
* strides: 每个维度变化的步长(byte数)
* ndim: 维度数
* data: buffer指针
* size: 元素个数
* itemsize: 元素大小(byte数)
* nbytes: 所有元素的大小(byte数)
* base: base指针

#### 数据类型属性

* dtype

#### 其它属性

* T: 维度反转的view
* real: 实部
* imag: 虚部
* flat: 1-D迭代器
* ctypes

### 方法

#### 转换

* item(*args) 复制一个元素
* itemset(*args) 修改一个元素
* tolist()
* tostring(), tobytes()
* tofile(fid)
* dump(file) pickle格式的导入
* dumps() pickle格式的导出
* astype(dtype[...]) 复制并转换类型
* byteswap([inplace]) 交换高低byte
* copy([order]) 返回一个copy
* view([dtype, type]) 返回一个view
* newbyteorder(order)
* getfield(dtype[, offset]), setfield(val, dtype[, offset]) ?
* setflags([...]) 设置flag
* fill(value) 用标量值填充

#### 形状管理

* reshape(shape[, order]) 复制并改变形状
* resize(shape[, refcheck]) 就地改变形状
* transpose(*axes) 返回一个维度反转的view
* swapaxes(axis1, axis2) 返回一个维度交换的view
* flatten([order]) 1-D化，复制
* ravel([order]) 1-D化，需要时复制
* squeeze([axis])

#### 元素选择和管理

* take(indices[...]), put(indices, values[, mode])
* repeat(repeats[, axis])
* choose(choices[...]) ?
* compress(condition[...]) ?
* sort([...]), argsort([...])
* partition(kth[...]), argpartition(kth[...])
* searchsorted(v[...])
* nonzero()
* diagonal([...])

#### 计算

* max(), argmax()
* min(), argmin()
* ptp() 最大值减最小值
* clip() 设置最大值和最小值
* conj()
* round()
* trace()
* sum(), cumsum()
* prod(), cumprod()
* mean(), var(), std()
* all(), any()
* dot()

## 索引ndarray中的元素

x[idx1,idx2,...,idxN]，idx可以是整数、slice(i:j:k)、整数数组、bool数组

### 基础索引

* 基础索引的idx只能是整数，或者slice(i:j:k)
* 基础索引的x[idx1,idx2,...,idxN]等价于x\[idx1][idx2]...[idxN]，多个idx是依次迭代的
* 基础索引返回的是view
* slice中负i和j被解释为n+i和n+j
* slice中i缺省为0(k>0)或n-1(k<0)，j缺省为n(k>0)或-n-1(k<0)，k缺省为1
* idx个数如果小于维度，缺少的维度被认为都位于末尾且都是全选
* ...可以代替缺少的维度，缺少的维度被认为都是全选
* 用newaxis可以插入一个新维度，长度为1

### 高级索引

* 高级索引的idx可以是整数数组，或者bool数组
* 相邻的整数数组索引是同时迭代的，因此必须有相同的形状
* 高级索引返回的是copy
* bool数组等价于obj.nonzero()

### 遍历元素，nditer()

* 按内存顺序遍历

```python
for x in np.nditer(a):
	print(x) # 每次处理一个
```

* 每次遍历内存连续的一段元素，适合C代码

```python
for x in np.nditer(a, flags=['external_loop']):
	print(x) # 每次处理内存连续的一段
```

* 每次遍历经过缓存的内存连续的一段元素，适合Python代码

```python
for x in np.nditer(a, flags=['external_loop', 'buffered']):
	print(x) # 每次处理经过缓存的内存连续的一段
```

# ufunc

## 可选关键字参数

* out
* where：bool数组，只计算output[where]
* axes
* axis
* keepdims
* casting
* order
* dtype
* subok
* signature
* extobj

## attributes

* nin
* nout
* nargs
* ntypes
* types
* identity
* signature

## methods

* reduce
* accumulate
* reduceat
* outer
* at

## 相关函数

* apply_along_axis：比循环快
* apply_over_axes
* vectorize
* frompyfunc
* piecewise
