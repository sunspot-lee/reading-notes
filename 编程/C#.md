---
tags: [编程]
title: 'C#'
created: '2018-12-29T00:53:49.512Z'
modified: '2019-10-28T01:13:59.303Z'
---

## Hello World

project编译后得到assembly，可以是exe文件或者dll文件。

一个或多个project组成solution。

```C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharp1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
        }
    }
}
```

## 注释

```c#
// 行注释
/// XML文档注释
/* 块注释 */
```

## 基础类型

### 整型

| Type          | Bytes | Range                     |
| ------------- | ----- | ------------------------- |
| byte, sbyte   | 1     | 0 ~ 255, -128~127         |
| ushort, short | 2     | 0 ~ 65535, -32768 ~ 32767 |
| uint, int     | 4     |                           |
| ulong, long   | 8     | 字面量后缀：'l'，'L'，'ul'，'UL'   |

### 浮点型

| Type    | Bytes |                          |
| ------- | ----- | ------------------------ |
| float   | 4     | IEEE 754编码。字面量后缀：'f'，'F' |
| double  | 8     | IEEE 754编码               |
| decimal | 16    | 十进制编码。字面量后缀：'m'，'M'      |

### bool型

1 byte，true或false

### char型

2 byte，Unicode编码

### string型

2×N byte，Unicode编码。string是引用类型。

```c#
string s1 = "C:\\Users\\Leon\\MyFile.txt";
string s2 = @"C:\Users\Leon\MyFile.txt"; // 等于s1
float v = 6.7f;
string s3 = "volumn=" + v; // 等于"volumn=6.7"
string s4 = $"volumn={v}"; // 等于"volumn=6.7"
```

### Array型

Array是引用类型。

```c#
int[] v1 = new int[3];
v1.Length; // 3
int[] v2 = new int[]{1, 2, 3};
int[][] v3 = new int[3][]; // 数组的数组
int[,] v4 = new int[3,4]; // 矩阵
v4.GetLength(0); // 3
v4.GetLength(1); // 4
string[] v5 = new string[10];
foreach (string s in v5) {...} // 实现了IEnumerable接口的可用foreach
```

### enum型

```c#
enum DaysOfWeek {Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday};
DaysOfWeek today = DaysOfWeek.Tuesday;
```

### null值

null可以赋给任意引用类型。

## 流程语句

```c#
if (...) {
  // ...
} else if (...) {
  // ...
} else {
  // ...
}
switch (cond) { // cond可以是整型、bool、char、string、enum
  case 1:
    // ...
    break;
  case 2:
    // ...
    break;
  default:
    // ...
    break; // 必须有break
}
while (...) {
  // ...
}
do {
  // ...
} while (...);
for (init; cond; update) {
  // ...
}
foreach (type var in vec) {
  // ...
}
```

## class 类

类是引用类型。

如果不指明，所有的类都继承自object。

子类的定义中可以用base来访问基类。

### 类修饰符

* abstract：只能继承，不能实例化
* sealed：不能继承，只能实例化
* partial：只是定义的一部分

### 成员修饰符

* private：类内可访问，类成员缺省为private
* protected：子类可访问
* internal：Assembly内可访问，类本身缺省为internal
* public：公开访问
* virtual：可以在子类中重载
* abstract：必须在子类中重载。只能用在abstract类中，无实体
* override：重载基类中的同名方法
* new：覆盖基类中的同名方法

### 属性

```c#
class Time {
  private int seconds;
  public int Seconds {
    get { return seconds; }
    private set { seconds = value; }
  }
  public int Minutes {
    get { return seconds / 60; }
  }
}
class Score {
  public int Score1 { get; set; } = 0;
  public int Score2 { get; } = 0;
}
```

### 事件

```c#
class Point {
  public double X { get; set { X = value; OnPointChanged(); } } = 0;
  public double Y { get; set { Y = value; OnPointChanged(); } } = 0;
  public event EventHandler PointChanged; // 事件可以是任何委托类型
  public void OnPointChanged() {
    if (PointChanged != null)
      PointChanged(this, EventArgs.Empty);
  }
}
```

### 方法

允许可选参数，命名参数，可变参数，out和ref参数。

```c#
int Clamp(int value, int min, int max = 100) { ... }
Clamp(min: 50, value: 20);

double Average(params int[] numbers) {
  double total = 0;
  foreach (int number in numbers)
    total += number;
  return total / numbers.Length;
}
Average(2, 3);
Average(2, 5, 8);

void ChangeVar(out int x, ref int y) {
  x = 3;
  y = 17;
}
int banana = 2;
int turkey = 5;
ChangeVar(out banana, ref turkey); // 结束后 banana=3, turkey = 17
```

### 继承

```c#
sealed class partial Square : Polygon {
  public Square() : base(4) {} // 构造器，调用基类构造器
}

Polygon polygon = new Square();

if (polygon is Square) { // 类型检查
  Square square = (Square)polygon; // 类型转换
  // 使用square
}

Square square = polygon as Square; // 类型转换，如果失败，square为null
if (square != null) {
  // 使用square
}

Polygon[] polygons = new Polygon[5];
polygons[0] = new Square();
polygons[1] = new Triangle();
```

### 操作符重载

必须是public和static，[]必须是public

```c#
public static Vector operator +(Vector v1, Vector v2) {
  return new Vector(v1.X + v2.X, v1.Y + v2.Y);
}

public double this[int index] {
  get {
    if (index == 0)
      return X;
    else if (index == 1)
      return Y;
    else
      throw new IndexOutOfRangeException();
  }
  set {
    if (index == 0)
      X = value;
    else if (index == 1)
      Y = value;
    else
      throw new IndexOutOfRangeException();
  }
}
```

### struct 结构

结构是值类型。

### interface 接口

接口是抽象类型。

子类只能有一个基类，但可以继承多个接口。

### 扩展方法

比如，给string扩展一个ToRandomCase()方法

```c#
static class StringExtensions {
  public static string ToRandomCase(this string text) {
    // ...
  }
}
```

## 泛型

```c#
List<string> listOfString = new List<string>(){ "abc", "def" };
Dictionary<string, int> phoneBook = new Dictionary<string, int>();

class MyList<T> { ... } // 定义泛型类
class MyList<T> where T : IComparable { ... } // 要求类型参数T必须继承了指定接口
class MyDict<K, V> where K : Interface1, SomeBaseClass
                   where V : Interface2 // 对类型参数的多重约束
{ ... }

class MyList<T> where T : new() { ... } // T支持缺省构造器
class MyList<T> where T : class { ... } // T是引用类型
class MyList<T> where T : struct { ... } // T是值类型
class MyDict<K, V> where K : V { ... } // K继承V

T LoadObject<T>(string fileName) { ... } // 泛型方法，同样支持泛型类定义中的那些特性
```

## 委托

```c#
delegate int MathDelegate(int a, int b); // 声明一个委托类型

int Add(int a, int b) { return a + b; }
int Subtract(int a, int b) { return a - b; }
MathDelegate mathOper = Add; // 定义一个委托变量并初始化
int res = meathOper(5, 7); // 使用委托变量，res = 12

delegate void LogEventHandler(LogEvent logEvent); // 声明一个委托类型
LogEventHandler logHandlers = LogToConsole;
logHandlers += LogToFile; // 委托链，使用logHandlers将依次调用LogToConsole和LogToFile
logHandlers -= LogToFile; // 拆除链中的一环

delegate void Action(); // 预定义的委托类型Action
delegate void Action<T>(T obj);
delegate void Action<T1, T2>(T1 arg1, T2 arg2);
// ...
delegate TResult Func<TResult>(); // 预定义的委托类型Func
delegate TResult Func<T, TResult>(T obj);
delegate TResult Func<T1, T2, TResult>(T1 arg1, T2 arg2);
// ...
```

## Lambda表达式

```c#
List<int> numbers = new List<int>(){ 1, 7, 4, 2, 5, 3, 9, 8, 6 };
IEnumerable<int> evens = number.Where(x => x % 2 == 0);

// 无参数Lambda表达式 () => Console.WriteLine("Hello")
// 单参数Lambda表达式 x => x % 2 == 0
// 双参数Lambda表达式 (x, y) => x * x + y * y

// Lambda语句 (int x) => { bool isEven = x % 2 = 0; return isEven; }

// 用Lambda表达式定义类方法
public int ComputeSquare(int value) => value * value;
// 用Lambda表达式定义类只读属性
public int X => x;
```

## namespace和using

```c#
using m = System.Math; // 起一个别名
using static System.Console; // 可以直接方位Console的成员了

WriteLine(m.PI);
```

## 异常

```c#
try {
  throw new Exception("error");
} catch (Exception e) if (e.Message == "error") { // 异常过滤器
  // ...
} catch (Exception) { // 不使用异常变量时就不用声明
  // ...
} finally {
  // ...
}
```

## 查询表达式 LINQ

```c#
public class Person {
  public string Firstname {get; set;}
  public string LastName {get; set;}
  public int Age {get; set;}
  public int Height {get; set;}
  public int Weight {get; set;}
}

List<Person> allPeople = new List<Person>();
// add many people here ...
IEnumerable<Person> adults =
  from person in allPeople
  where person.Age >= 18
  select person;
```

## 线程

```c#
public static void CountTo(object input) {
  for (int index = 0; index < (int)input; index++) {
    Console.WriteLine(index + 1);
  }
}

Thread thread = new Thread(CountTo);
thread.Start(50);
thread.Join(); // 等待结束
```

## iterator和yield

支持IEnumerable<T> 接口的类都支持foreach语句，此外还支持yield

```c#
class IteratorExam : IEnumerable<int> {
  public IEnumerator<int> GetEnumerator() {
    for (int index = 0; index < 10; index++)
      yield return index;
  }
  IEnumerator IEnumerable.GetEnumerator() {
    return GetEnumerator();
  }
}
```

## const和readonly

const变量必须在定义时初始化，是编译时常量，缺省是static的。

readonly变量可以在构造器中初始化，是运行时常量。

```c#
class Point {
  private readonly double x;
  private readonly double y;
  public Point(double x, double y) {
    this.x = x;
    this.y = y;
  }
}
```



## 常用类

* System.Console 控制台
* System.IO.File 文件
* System.Convert 类型转换
* System.Math 数学
