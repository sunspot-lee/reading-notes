---
tags: [编程]
title: Git
created: '2018-12-29T00:53:49.533Z'
modified: '2019-11-12T06:25:52.217Z'
---

# 1. Git

文件在Git中有3种状态：已提交committed、已暂存staged、已修改modified。

工作目录中的文件修改后要先add到暂存区，然后commit到本地仓库，然后push到远端仓库

远端仓库中的文件修改后要先fetch到本地仓库，然后checkout到工作目录；或者从远端仓库直接pull到工作目录

**新建本地仓库**

```
git init
```

执行后工作目录中所有文件都标识为‘已修改’。

**复制远程仓库**

```
git clone [url]
```

**查询文件状态**

```
git status
```

**暂存已修改文件**

```
git add [file]
```

**提交已暂存文件**

```
git commit -m [说明]
```

**查询提交历史**

```
git log
```

**本地仓库到远程仓库**

```g
git push [remote-name] [branch-name]
```

**远程仓库到本地仓库**

```
git fetch [remote-name]
```

拉取到的数据并不会自动与工作目录中的文件合并
