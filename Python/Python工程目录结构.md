# Python工程目录结构

假设项目名为foo，比较建议的目录结构是

```
Foo/
|-- bin/
|   |-- foo
|
|-- foo/
|   |-- tests/
|   |   |-- __init__.py
|   |   |-- test_main.py
|   |
|   |-- __init__.py
|   |-- main.py
|
|-- docs/
|   |-- conf.py
|   |-- abc.rst
|
|-- setup.py
|-- requirements.txt
|-- README
```

* bin/: 存放项目的一些可执行文件
* foo/: 存放项目的所有源代码
    * 所有模块、包都应该放在此目录，不要置于顶层目录
    * 其子目录tests/存放单元测试代码
    * 程序的入口最好命名为`main.py`
* docs/: 存放一些文档
* `setup.py`: 安装、部署、打包的脚本
* `requirements.txt`: 存放软件依赖的外部Python包列表
* README: 项目说明文件