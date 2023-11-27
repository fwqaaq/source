# Cargo 镜像源设置

在 `~/.cargo/config` 中添加如下内容（没有 config 文件则创建），详情请查看 [config](./config)：

Rust 1.68 之后，cargo 稀疏索引已经支持，可以使用 `sparse+` 作为前缀，1.70 默认开启：

```config
[source.crates-io]
replace-with = 'tuna'

[source.tuna]
registry = "https://mirrors.tuna.tsinghua.edu.cn/git/crates.io-index.git"

[source.ustc]
registry = "sparse+https://mirrors.ustc.edu.cn/crates.io-index/"
```

源名称 | 地址
------|------------------------
清华源 | <https://mirrors.tuna.tsinghua.edu.cn/git/crates.io-index.git>
字节源 | <https://rsproxy.cn/crates.io-index>
中科大 | <git://mirrors.ustc.edu.cn/crates.io-index>
