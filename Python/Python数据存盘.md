---
tags: [Python]
title: Python数据存盘
created: '2019-10-28T01:10:04.432Z'
modified: '2019-10-28T01:10:26.497Z'
---

# 1. pickle 推荐
```python
import pickle

# 保存数据
with open('file.pickle', 'wb') as f:
    pickle.dump({ 'd1': data1, 'd2': data2 }, f)

# 读取数据
with open('file.pickle', 'rb') as f:
    db = pickle.load(f)
data1 = db['d1']
data2 = db['d2']
```
优点：标准库，可以保存任何Python对象
缺点：一个文件只能保存一个对象(可以规避)

# 2. shelve
```python
import shelve

with shelve.open('file') as db:
    # 保存数据
    db['d1'] = data1
    db['d2'] = data2

    # 读取数据
    data1 = db['d1']
    data2 = db['d2']
```
优点：标准库，可以保存任何Python对象，可以保存多个对象
缺点：一个数据库对应3个文件

# 3. numpy
```python
import numpy as np

# 保存数据
np.save('file.npy', data)
np.savez('file.npz', d1=data1, d2=data2)  # 保存多个数组
np.savez_compressed('file.npz', d1=data1, d2=data2)  # 保存多个数组并进行压缩

# 读取数据
data = np.load('file.npy')
with np.load('file.npz') as f:
    data1 = f['d1']
    data2 = f['d2']
```
优点：可以在一个npz文件中保存多个NumPy数组
缺点：只能保存NumPy数组

# 4. scipy
```python
import scipy.io as sio

# 保存数据
sio.savemat('file.mat', { 'd1': data1, 'd2': data2 })

# 读取数据
db = sio.loadmat('file.mat')
data1 = db['d1']
data2 = db['d2']
```
优点：可以在一个mat文件中保存多个NumPy数组
缺点：只能保存NumPy数组
