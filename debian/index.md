# Debian

将 `/etc/apt/sources.list` 中的默认源（`http://deb.debian.org/`）替换为清华源：

```bash
sed -i 's/:\/\/deb.debian.org/s:\/\/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
```

Debian 12 (bookworm) 的容器镜像源替换：

```bash
sudo sed -i 's/:\/\/deb.debian.org/s:\/\/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources
```

1. `deb`：这指明了这是一个二进制包的源。Debian 使用 deb 作为二进制包的格式，与之相对的是 deb-src，后者用于源代码包。
2. `bookworm`：这是 Debian 发行版的代号（12）。Debian 的每个稳定版都有一个代号，比如 stretch、buster、bullseye 等。bookworm 是一个即将发布的版本的代号，目前（截至 2022 年初）处于测试阶段。
3. `main`：这是 Debian 的主要区域，包含遵循 Debian 自由软件准则的软件包。
4. `contrib`：这个区域包含的软件包虽然是自由的，但是依赖于不在 main 区域中的软件（比如依赖于非自由软件或专有软件）。
5. `non-free`：这个区域包含的是非自由软件，即那些不完全遵循 Debian 自由软件准则的软件。
6. `non-free-firmware`：这通常不是标准的 Debian 软件源分类，但在某些特定的镜像或定制版本中可能会出现。它可能包含了一些非自由的固件，这些固件通常用于某些硬件设备的驱动程序。

```txt
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
```

源名称 | 地址
----- | ---
清华源 | <https://mirrors.tuna.tsinghua.edu.cn/debian/>
中科大 | <https://mirrors.ustc.edu.cn/debian/>

参考：<https://mirrors.tuna.tsinghua.edu.cn/help/debian/>、<https://mirrors.ustc.edu.cn/help/debian.html>
