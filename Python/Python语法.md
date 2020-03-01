* 注释：#开始到行末
* 源代码缺省UTF-8编码，或者用编码声明：首行注释
* 行连接符：\
    * 括号里的表达式不用行连接符
* 缩进：4个空格

```python
# -*- coding: cp936 -*-
```

# 1. 基础类型和表达式

* bool：int的子类型
    * not
    * and, or 都是短路运算
* 比较操作
    * <, <=, >, >= 不能比较复数
    * ==, !=
    * is, is not
    * 可以连写`x<y<z`
* 数值：int, float, complex
    * 数字间可以插入_提高可读性`12_3456.78`
    * 以j结尾的数是虚数
    * 单目运算：+, -
    * 双目运算：+, -, *, /, **
    * 函数：abs(x), pow(x, y[, z])
    * 整数和浮点数还支持：//, %, divmod(x, y), round(x[, n])
        * x//y 相当于 floor(x/y)
        * divmod(x, y) 相当于 (x//y, x%y)
    * 对整数
        * 整数位宽是无限的
        * 以0b, 0o, 0x开头的整数是非10进制整数
        * 整数还支持bit运算：~, |, ^, &, <<, >>
        * 整数还支持方法：x.bit_length(), x.to_bytes(...), int.from_bytes(...)
    * 浮点数通常是64位实现
    * 浮点数还支持方法：x.as_integer_ratio(), x.is_integer(), x.hex(), float.fromhex(s)
    * 复数包含实部和虚部，都是float
    * 复数还支持属性和方法：x.real, x.imag, x.conjugate()

# 2. 序列类型

* 不可变序列类型range支持
    * x in s, x not in s
    * s[i:j:k]
    * len(s), min(s), max(s)
    * s.index(x...) 返回第一个等于x 的项的索引
    * s.count(x)
* 不可变序列类型tuple还支持
    * s + t 代价很高
    * s * n 结果是s的n次引用
* 可变序列类型还支持
    * s[i:j:k] = x
    * del s[i:j:k]
    * s+=t, s*=n
    * s.append(x) 相当于 s+=[x]
    * s.insert(i, x) 相当于 s[i:i]=[x]
    * s.pop([i]) 会返回被删除的项
    * s.remove(x) 删除第一个等于x的项
    * s.reverse() inplace执行
    * s.clear() 相当于 del s[:]
    * s.copy() 相当于 s[:]
* 可变序列类型list还支持
    * s.sort(...) inplace执行
* 不可变序列类型str：支持所有tuple支持的操作
    * Unicode编码
    * r前缀：禁用转义符
    * f前缀：格式化
    * 相邻字符串自动连接
    * 三引号多行字符串
    * 还支持很多专有操作
* 不可变序列类型bytes：支持所有tuple支持的操作
    * ASCII字符
    * b前缀：必须的
    * r前缀：禁用转义符
    * 还支持：b.hex(), bytes.fromhex(s)
    * 还支持很多专有操作
* 可变序列类型bytearray：支持所有bytes和可变序列类型支持的操作

* 不可变无序类型frozenset
    * 支持：len(s), x in s, x not in s, s.copy()
    * 支持方法：s.isdisjoint(o) 判断是否没有公共成员
    * 支持子集判断：<=, <, >=, > 不支持排序
    * 支持集合运算：|, &, -, ^
* 可变无序类型set还支持
    * |=, &=, -=, ^=
    * s.add(elem), s.remove(elem), s.discard(elem), s.pop(), s.clear()

* 可变映射类型dict支持
    * key in d, key not in d
    * len(d), iter(d)
    * d[key], d.get(key[, default])
    * d[key] = value, d.setdefault(key[, default])
    * del d[key], d.pop(key[, default]), d.popitem()
    * d.copy(), d.clear(), d.update([other])
    * d.keys(), d.values(), d.items() 返回view对象
    * view对象支持：len(v), iter(v), x in v

# 3. 语句


```python
x, y = 0, 1
x, y = y, x

a, b, *c = range(5)
a, *b, c = range(5)
*a, b, c = range(5)
```


```python
y = x if x >= 0 else -x
```


```python
while True:
    break

for x in (1,3,'a',10):
    print(x)
```


```python
x=[1,2,3]
t=[xx**2 for xx in x]
```


```python
s = [x**2 for x in range(10) if x < 5] # 列表推导

t = (x**2 for x in range(10000)) # 生成式表达式

d = {k: ord(k) for k in 'abcdef' if k < 'e'} # 字典推导

v = {str(x**2) for x in [1,2,3]} # 集合推导
```


```python
with open('temp.txt', 'w') as f:
    print(s, file=f)
```

# 4. 内置函数

* abs(x), divmod(x, y), pow(x, y), round(x), max(...), min(...), sum(iter), sorted(iter)
* all(iter), any(iter), filter(func, iter), map(func, iter), reversed(seq), len(seq)
* enumerate(iter), zip(iter), next(iter)
* chr(i), ord(c), bin(x), oct(x), hex(x), format(val)
* hash(obj), id(obj), callable(obj), isinstance(obj, cls), issubclass(cls1, cls2), super()
* hasattr(obj, name), getattr(obj, name), setattr(obj, name, val), delattr(obj, name)
* ascii(obj), repr(obj), eval(str), exec(obj), compile(...)
* class: bool, int, float, complex, tuple, list, range, slice, iter, bytes, bytearray, str, dict, frozenset, set, object, type, memoryview
* @: staticmethod, classmethod, property
* open(...), print(...), input()
* help(), breakpoint(), dir(), vars(), locals(), globals()

# 5. 自定义函数

函数：位置参数必须在关键字参数之前，关键字参数可以设置缺省值


```python
# /之前的参数只能是位置参数，*之后的参数只能是关键字参数
def func(a, b, /, c, d, *, e, f):
    pass

# *pargs是可变长位置参数，**kargs是可变长关键字参数
def func(arg, *pargs, **kargs):
    pass

f = lambda x: x**2

# 函数修饰
@decorate
def func():
    pass
# 等价于
func = decorate(func)
```

生成器

```python
def gen(limit):
    n = 0
    while n < limit:
    	yield n # yield用来发送数据
        n += 1

for x in gen(10):
    print(x) # 打印0~9

def rcv():
    while True:
        n = yield # yield用来接收数据
        print(n)

r = rcv()
r.send(None) # 用next(r)也可以
for x in range(10):
    r.send(x) # 打印0~9
```

异步函数/协程

```python
async def async_func():
    return 1
```

异步生成器

```python
async def async_gen():
    yield 1
```

# 6. 自定义类

```python
class cls:
    x = 1
    y = 'str'
    
    def fun(self):
        return 3
    
    def __init__(self):
        self.z = []

a = cls()
a.w = 0.1
```



# 7. 模块

* 模块就是一个python文件
* 模块用import语句导入
* 已经被导入的模块列表保存在sys.modules中
* 搜索路径列表保存在sys.path中
* _* 类型的标识符不会被`from module import *`导入
* \_\_*\_\_ 类型的标识符是系统定义的
* 类定义中的 \_\_* 类型的标志符是类私有的
* dir()可以看模块的内容


```python
import mymodule

import mymodule as mm

from mymodule import *

from mymodule import func1

if __name__ == '__main__':
	# 测试代码
```

# 8. 包

* 包就是一个目录，目录中有多个模块或子包
* 包也用import语句导入，包名就是目录名
* 包目录中有一个 \_\_init\_\_.py 文件，包被导入时， \_\_init\_\_.py 文件会执行
