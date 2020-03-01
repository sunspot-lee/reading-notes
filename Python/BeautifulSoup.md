# 1. BeautifulSoup

``` python
from urllib.request import urlopen
from bs4 import BeautifulSoup

html = urlopen('...')
bs = BeautifulSoup(html.read())
```

* bs是一个tag树
* 用.`tag`访问tag；如果tag有name属性，也可以用.`name`
* 用.find()和.find_all()搜索tag
* 用.children遍历子tag，用.parent访问父tag
* 用.next_siblings和.previous_siblings遍历兄弟tag
* 用.`tag`[`attr`]访问tag的attr属性；或者用.`tag`.attrs遍历tag的属性
