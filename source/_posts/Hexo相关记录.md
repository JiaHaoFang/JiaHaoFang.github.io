---
title: Hexo相关记录
date: 2022-02-22 13:22:06
tags: [Hexo, git]
categories: [code]
---

> 个人记录向博客，记录遇到的各种问题

## 使用git分支保存源码

1. 拉取分支

​		因Github Page要求使用master分支作为发布网站的源代码，我们只能用master分支来保存hexo生成的静态网页，对于博客源码，可以新建一个source分支来存储。在github上打开Pages对应的仓库，也就是以”username.github.io”命名的仓库，然后建立一个source分支，仓库的默认分支改为保存源码的source分支，这样通过`git clone`拉取的就是source分支代码了。

```bash
git clone https://github.com/JiaHaoFang/JiaHaoFang.github.io.git
```

2. 配置环境

​		配置环境完成即可继续使用：

```bash
npm install hexo
npm install hexo-deployer-git -save
npm install hexo-excerpt --save
```



## 添加主题配置

```bash
git clone https://github.com/theme-next/hexo-theme-next.git themes/next
```



## 添加Latex配置

* 还没有遇到，给你留个位置
