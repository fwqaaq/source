# Ubuntu（仅 x86_64）

将 /etc/apt/sources.list 文件中 Ubuntu 默认的源地址 <http://archive.ubuntu.com/> 替换为镜像源即可

```bash
sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list
```

1. `deb`：这指明了这是一个二进制包的源。Ubuntu 使用 deb 作为二进制包的格式。
2. `jammy`：这是 Ubuntu 发行版的代号。Ubuntu 的每个版本都有一个代号，通常由两个单词组成，其中 jammy 是 Ubuntu 22.04 LTS 的代号。
3. `main`：这是 Ubuntu 的主要区域，包含由 Ubuntu 团队维护，且遵循 Ubuntu 自由软件和开源哲学的软件包。
4. `restricted`：这个区域包含的是受版权或法律问题限制的软件包。虽然这些软件包是自由的，但它们可能不提供源代码，或者源代码的使用受到限制。
5. `universe`：这个区域包含的是社区维护的软件包。这些软件包可能是自由的或非自由的，但不由 Ubuntu 团队直接维护。
6. `multiverse`：这个区域包含的是非自由软件，即那些不遵循 Ubuntu 自由软件哲学的软件。这些软件可能受到版权法的限制，可能需要付费，或者有其他使用限制。

```txt
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse
```

源名称 | 地址
----- | ---
清华源 | <https://mirrors.tuna.tsinghua.edu.cn/ubuntu/>
中科大 | <https://mirrors.ustc.edu.cn/ubuntu>

参考：<https://mirrors.ustc.edu.cn/help/ubuntu.html>
