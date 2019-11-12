---
tags: [编程]
title: Rust
created: '2018-12-29T00:53:49.631Z'
modified: '2019-10-28T01:13:59.338Z'
---

# Rust

## Cargo

* 创建工程

  ```powershell
  cargo new project-name --bin
  ```
  cargo会生成一个“Cargo.toml”文件，里面有工程信息，包括依赖的库。“--bin”参数表示工程目标是一个可执行程序，而不是一个库。

* 构建工程

  ```powershell
  cargo build
  ```
  cargo会自动下载依赖的库，并把信息保存到“Cargo.lock”文件中，确保以后可以用同样版本的库来构建工程。加上“--release”参数可以进行release版构建。

* 构建并运行工程

  ```powershell
  cargo run
  ```

* 更新库

  ```powershell
  cargo update
  ```

  cargo会忽略"Cargo.lock"文件，升级到最新的补丁版本(对应第三段版本号)。

  如果要更新主版本或副版本(对应第一段和第二段版本号)，要修改"Cargo.toml"文件。

## 语言

Rust只有两种语句(“声明语句”和“表达式语句”)，其它都是表达式。语句不返回一个值，而表达式返回一个值。

### main()函数

```rust
fn main() {
  // 单行注释
}
```

### 导入库

Rust缺省导入prelude库，如果需要导入别的库，用use语句

```rust
use std::io;
```

如果需要导入的库不是标准库，还要在toml文件的[dependencies]区增加相应的行

```rust
[dependencies]
rand = "0.3.14"
```



### 绑定

用let语句可以给一个名字绑定一个值。

绑定缺省是不可变的，类似定义了一个常量。也可以做可变绑定，类似定义了一个变量。

绑定有一个“作用域”，也就是所在的块。同一个域中相同名字的后面的绑定会覆盖前面的绑定，这叫“隐藏”。

隐藏和可变绑定很相似，但隐藏可以把一个名字绑定到不同的类型的值，也可以改变可变性。

可以给被绑定的名字增加类型注解。

let表达式的左边是一个“模式”。

```rust
let x = 5; // 不可变绑定
x = 10; // 非法！
let mut x = 10; // 改为可变绑定
x = 11; // 修改
let x = x; // 再次改为不可变绑定

let x: i32 = 5; // 类型注解
let (x, y) = (1, 2);
```

### 函数

```rust
fn print_num(x: i32) { // 入参必须加类型注解
    println!("num is {}", x);
}
fn add(x: i32, y: i32) -> i32 { // 有返回值
  x + y // 最后一个表达式的结果要作为函数结果返回，因此不能加;
}
```

### 基础类型

* 布尔类型，bool

```rust
let b: bool = true; // 或 false
```

* 字符类型，Unicode字符，4 bytes

```rust
let c = 'c';
```

* 数值类型，分有符号整数(i8,i16,i32,i64,isize)，无符号整数(u8,u16,u32,u64,usize)，浮点数(f32,f64)。isize和usize的大小依赖底层指针的大小。

```rust
let x = 42; // 默认为 i32
let y = 1.0; // 默认为 f64
let z: f64 = 1.23e+2;
```

* 数组类型，固定长度，相同类型元素，[T; N]

```rust
let a = [1, 2, 3]; // a: [i32, 3]
let mut m = [1, 2, 3]; // m: [i32, 3]
let a = [0; 20]; // c: [i32; 20] 每个元素都初始化为0
a.len(); // 20
let names = ["abc", "def", "ghi"]; // names: [&str; 3]
names[0]; // "abc"
```



```rust
// 数组，固定大小，同类型元素，[T; N]
// 切片，数组的部分引用，&[T]
// 元组，固定大小，不同类型元素
// 指针
// 函数
// 元类型，即()
```

