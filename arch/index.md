# ArchLinux（仅 x86）

通常在 `/etc/pacman.d/mirrorlist` 文件的最顶端添加

```txt
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch
```

Arch Linux CN 源：在 `/etc/pacman.conf` 文件末尾添加两行：

```txt
[archlinuxcn]
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
```

源名称 | 地址
----- | ---
清华源 | <https://mirrors.tuna.tsinghua.edu.cn/archlinux/>
中科大 | <https://mirrors.ustc.edu.cn/archlinux/>

参考：<https://mirrors.ustc.edu.cn/help/archlinuxcn.html>
