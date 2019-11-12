# Matlab中的单元测试

## 基于脚本的单元测试

1. 脚本文件名必须以`test` 开头或结尾
2. 测试脚本分成多个代码区，第一个是共享变量区，后面的都是测试用例区，测试用例区都以`%%` 注释行开头
3. 测试用例彼此独立，测试用例可以修改共享变量，但不会对别的测试用例产生影响
4. 脚本写好后，在命令行上用`runtests('脚本文件名')` 调用执行，返回的结果是一个TestResult类型的数组，数组的每个成员都对应一个测试用例

## 基于函数的单元测试

测试函数模版：

```matlab
%% 主函数名以test开头或结尾
function tests = exampleTest
tests = functiontests(localfunctions);
end

%% 测试函数名以test开头或结尾
function testFunctionOne(testCase)
% Test specific code
end

function FunctionTwotest(testCase)
% Test specific code
end

%% Optional file fixtures
function setupOnce(testCase) % do not change function name
% ...
end

function teardownOnce(testCase) % do not change function name
% ...
end

%% Optional fresh fixtures  
function setup(testCase) % do not change function name
% ...
end

function teardown(testCase) % do not change function name
% ...
end
```

函数写好后，在命令行上用`runtests('函数文件名')` 调用执行，返回的结果是一个TestResult类型的数组，数组的每个成员都对应一个测试用例

## 基于类的单元测试

## 扩展单元测试框架

## 性能测试框架

脚本写好后，在命令行上用`runperf('脚本文件名')` 调用执行，返回的结果是一个MeasurementResult类型的数组，数组的每个成员都对应一个测试用例