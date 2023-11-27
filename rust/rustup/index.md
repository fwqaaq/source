# Rustup 镜像源配置

长期使用：

```bash
echo 'export RUSTUP_UPDATE_ROOT=https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup' >> ~/.bash_profile
echo 'export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup' >> ~/.bash_profile
```

清华源：

* RUSTUP_UPDATE_ROOT=<https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup>
* export RUSTUP_DIST_SERVER=<https://mirrors.tuna.tsinghua.edu.cn/rustup>

中科大源：

* RUSTUP_DIST_SERVER=<https://mirrors.ustc.edu.cn/rust-static>
* RUSTUP_UPDATE_ROOT=<https://mirrors.ustc.edu.cn/rust-static/rustup>
