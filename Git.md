# Git

文件在Git中有3种状态：已提交committed、已暂存staged、已修改modified。

工作目录中的文件修改后要先stage到暂存区，然后commit到Git仓库

**新建Git仓库**

1. 在工作目录中执行'git init'
2. 执行'git add [file]'把文件纳入版本控制
3. 执行'git commit -m [说明]'提交

**复制Git仓库**：

执行'git clone [url]'

**文件状态的转换**：执行'git status'查询

![img](http://git.oschina.net/progit/figures/18333fig0201-tn.png)

**把文件纳入Git控制**：执行'git add [file]'

**stage已修改文件**：执行'git add [file]'

**commit已暂存文件**：执行'git commit -m [说明]'

**本地仓库到远程仓库**：执行'git push [remote-name][branch-name]'

**远程仓库到本地仓库**：执行'git fetch [remote-name]'