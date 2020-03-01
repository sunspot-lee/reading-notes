# OpenCV

## 基础结构

### _InputArray, _OutputArray, _InputOutputArray 用来传输函数入参的代理类

* 如果需要传入或传出函数一个空数组，可以用cv::noArray()
* _InputArray类有很多成员函数可以获取入参的属性
* 读入参之前，先调用 _InputArray::getMat()构造Mat
* 可以用 _OutputArray::needed()来检查需不需要计算出参
* 写出参之前，先调用 _OutputArray::create()分配内存，再调用 _OutputArray::getMat()构造Mat

### Point_<T> 2D点(x,y)

```C++
typedef Point_<int> Point2i;
typedef Point_<int> Point;
typedef Point_<float> Point2f;
typedef Point_<double> Point2d;

pt.x; pt.y; // 坐标
pt1.dot(pt2); // 点积
pt1.ddot(pt2); // 双精度点积
pt1.cross(pt2); // 叉积
pt.inside(r); // 检查是否在矩形中
```

* pt1 ± pt2
* a * pt, pt * a
* norm(pt)：2阶模

### Point3_<T> 3D点(x,y,z)

``` C++
typedef Point3_<int> Point3i;
typedef Point3_<float> Point3f;
typedef Point3_<double> Point3d;

pt.x; pt.y; pt.z; // 坐标
pt1.dot(pt2); // 点积
pt1.ddot(pt2); // 双精度点积
pt1.cross(pt2); // 叉积
```

### Size_<T> 矩形尺寸(width,height)

```c++
typedef Size_<int> Size2i;
typedef Size_<int> Size;
typedef Size_<float> Size2f;

s.area(); // 矩形面积
```

### Rect_<T> 矩形(x,y,width,height)

```c++
typedef Rect_<int> Rect;

r.tl(); // 左上角(x,y)
r.br(); // 右下角
r.size(); // 尺寸(width,height)
r.area(); // 面积
r.contains(pt); // 检查是否包含点。矩形包含坐上边，不包含右下边
```

* r ± pt
* r ± s
* r1 & r2：交集
* r1 | r2：包含r1和r2的最小矩形

### RotatedRect 旋转矩形(center,size,angle)

```c++
rr.points(); // 4个顶点
rr.boundingRect(); // 包含rr的最小矩形
```

### TermCriteria 终止判据(type,maxCount,epsilon)

迭代算法的终止判据

### Matx<T,m,n> 矩阵，M(i,j)

编译时已知类型和尺寸的矩阵

### Vec<T,n> 向量，V[i]

编译时已知类型和尺寸的向量

### Scalar_<T> 4元向量(v0,v1,v2,v3)

```c++
typedef Scalar_<double> Scalar;

Scalar_<T>.all(v); // 返回一个所有分量都为v的向量
sc1.mul(sc2, k); // sc1 .* sc2 * k
sc.conj(); // (v0,-v1,-v2,-v3)
sc.isReal(); // v1==v2==v3==0
```

### Range 范围[start,end)

```c++
ra.size();
ra.empty();
Range.all(); // 全部
```

### Ptr<T> 引用计数指针

```c++
p.addref();
p.release();
p.delete_obj();
p.empty();
p->...;
*p;
```

### Mat 稠密数组

$$
addr(M_{i_0,\cdots,i_{n-1}})=M.data+M.step[0]*i_0+\cdots+M.step[n-1]*i_{n-1}
$$

* 访问元素

```c++
M.at<T>(i,j); // M(i,j)
M.ptr<T>(i); // 指向第i行的指针
for(auto it = M.begin<T>(); it != M.end<T>(); ++it)
  *it;

M.row(i), M.col(j);
M.rowRange(r), M.colRange(r);
M.diag(d);
M.clone();
M1.copyTo(M2);
M1.convertTo(M2, type, ...);
M1.assignTo(M2, ...);
M1.setTo(M2, ...);
M.reshape(...);
M.total();
M.isContinuous();
```

* 矩阵表达式

```c++
A+B, A-B, A+s, A-s, s+A, s-A, -A;
A*alpha;
A.mul(B), A/B, alpha/A; // 元素运算
A*B; // 矩阵乘
A.t(); // 转置
A.inv([method]); // 求逆
A.inv([method])*B; // 解 AX=B
A cmpop B, A cmp alpha; // 比较，结果是8 bit单通道mask，255代表true，0代表false
A logicop B, A logicop s, ~A; // 位操作
min(A,B), min(A,alpha), max(A,B), max(A,alpha);
abs(A);
A.cross(B), A.dot(B)
```
### Mat_<T> 指定元素类型的Mat

### NAryMatIterator n维数组迭代器

### SparseMat 稀疏数组

### SparseMat_<T> 指定元素类型的SparseMat

### Algorithm 算法类

```c++
algo.get<T>("para_name"); // 读参数
algo.set<T>("para_name"); // 写参数
algo.read(fs); // 从文件读参数
algo.write(fs); // 向文件写参数
getList(..); // 注册算法列表
create("algo_name"); // 构造算法实例
```

## 工具

### CommandLineParser 类

```c++
const String keys = // 命令行语法
    "{help h usage ? |      | print this message   }" // 没有缺省值时用has()来检查是否出现
    "{@image1        |      | image1 for compare   }" // @前缀表示位置参数
    "{@image2        |<none>| image2 for compare   }"
    "{@repeat        |1     | number               }"
    "{path           |.     | path to file         }"
    "{fps            | -1.0 | fps for output video }"
    "{N count        |100   | count of objects     }" // 命名参数在命令行上加-前缀或--前缀
    "{ts timestamp   |      | use time stamp       }" // -N=10 or --count=10
    ;

CommandLineParser parser(argc, argv, keys);
parser.about("命令行解析器"); // 设置"about message"

if (parser.has("help")) { // 如果有"help"参数
    parser.printMessage(); // 打印帮助信息
    return 0;
}
String path = parser.getPathToApplication(); // 程序路径

String img1 = parser.get<String>(0); // 获取位置参数
double fps = parser.get<double>("fps"); // 获取命名参数

if (!parser.check()) { // 在最后检查命令行解析是否出错
    parser.printErrors(); // 打印错误信息
    return 0;
}
```

### 错误处理工具

```c++
CV_Assert(x>0); // 运行时检查，Debug和Release都执行
CV_DbgAssert(x>0); // 运行时检查，Debug执行
CV_Error(1, "x<=0");
CV_Error_(1, "x=%g", x);
CV_ErrorNoReturn(1, "x<=0");
CV_ErrorNoReturn_(1, "x=%g", x);
```

### TickMeter 类

```c++
TickMeter tm;
tm.start();
// do something ...
tm.stop();
cout << tm;
```

### 常量

```c++
CV_PI
CV_2PI
CV_LOG2 // ln(2)
```

### 函数

```c++
String format(const char *fmt, ...);
void glob(String pattern, vector<String> &result, bool recursive=false);
String tempfile(const char *suffix=0);
T_out saturate_cast<T_out>(T_in v)
```

