---
categories: Blog
tags:
  - elog
  - notion
  - hexo
status: 已发布
description: ''
permalink: notion-hexo/
title: Notion + Hexo + GitHub Actions + Vercel 博客解决方案
cover: 'https://prod-files-secure.s3.us-west-2.amazonaws.com/809b2785-2afd-42d1-9139-e6f17eaa52c1/dc3ab2f7-66cb-4a5c-91bd-0c775b8e2aa5/%E5%B9%BD%E7%81%B5%E5%85%AC%E4%B8%BB.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466Z4JMBRVH%2F20250401%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250401T105959Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEFMaCXVzLXdlc3QtMiJGMEQCIA93qI0%2FjcIHIa%2Fx6IKZRQuqMO8gQ5ran9JHx46kSygoAiABjrMADy03Gi7xkVdtu0igtzqAhIqVn5aJKn7o9FX0qSqIBAi8%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDYzNzQyMzE4MzgwNSIMEpYSCyhoTOVD%2BfOxKtwDb5AY%2F1Gr7Pbvu%2FjBr8kxMbfv1OP4J65saldyvJiEU2hNnwZeUIu8pAOB4YSzg9iBzV4KMeNCXlSs1r%2FzAYzVisKETDqVYs8oZd4vBnwTSMx%2Bqsp43zCMNrvhIYwGQctfXyVWo0shOZMOhapbl3NMNirB1%2B1h2%2Flw11bNZzd4eNNDgBlVdx5D3lV%2BZa35aHgxMkqwlhPBeiecxQt%2Fh5OEfqCL8z5%2FN%2BvuzxEIvMrWrWma1WvYJy9T5xZUmYqiEtmonpmcTKeCkuEBvV0HsIjmteF16eb6xCaptABOGm0hUVcmcZ92uNrQsOdGbJPsPKj2zcTv6QFPGeXtRH%2BcdrImpbax0Sxb8joratdKR2T2syg%2F5hoz%2BH1IcpGP3mrzWy2Rw7%2Bth57%2Bh7LDrHKF%2FoF5GuU7teeajrOoA%2Bn1mibSyWX7EJtRNHZGt%2Fq4RvZMt2l42vzzxBibk2jcwybizqNwvZak7nfCbB5CEfNkRd2YyU7a0ZJf5NgL5ME3hzQWlNPsy4S4g7AsMEcdmuVwOXIGBLjywfjbSANzcW5PFnIZuFDQ6bSutz9X1OFUKuY1ghUtoAjCveTJgYsYUGUT7t%2BYSmdn6c3MSofEw7in6xb%2F8OCaTIM3lkgr21DKzGww4YOvvwY6pgEFVzxQGg6L09U359ez9XxrI0sc3FL3eH5QspGFdrz5ty7sp4G0liZIe6dTsWIATU6kuwW8sxdzZ70U0H5jMR%2BF5lxsBiyKqJlt7jXNmZEdoma4vWoZVIXce12p31eF545gjOHNezsSvUvs3XgJE7fF08uSK6GcmP2gRPBjlzj8v4GdxEDGJrOFSOxRBrlPUfedwLhso5Gy0TnaVC8R1SOiIDIFijvT&X-Amz-Signature=c0bbef039edb607894f1109e38f3eb02119fe97f55136a5c0480eef8f82bc10b&X-Amz-SignedHeaders=host&x-id=GetObject'
urlname: 1c724191-cd14-81ce-a193-d17c96f48d1b
date: '2025-03-31 23:35:00'
updated: '2025-04-01 18:12:00'
---

# 博客工具

- 写作平台：Notion
- 博客平台：[Hexo](https://hexo.io/)
- 博客主题：[Butterfly@4.10.0](https://github.com/jerryc127/hexo-theme-butterfly)
- 博客文档同步：[Elog](https://github.com/LetTTGACO/elog)
- 部署平台：Vercel
- 博客仓库：[https://github.com/LetTTGACO/notion-hexo](https://github.com/LetTTGACO/notion-hexo)

# 博客搭建指南


## Fork模板仓库


[点击 Fork](https://github.com/elog-x/notion-hexo/fork) 该模板仓库到个人 Github 账号仓库下并 clone 到本地


## 安装依赖


在项目根目录下运行命令安装依赖


```shell
npm install
```


## 新建 Elog 本地调试文件


在项目根目录中复制`.elog.example.env`文件并改名为`.elog.env`，此文件将用于本地同步Notion 文档


## 配置 Notion 关键信息


按照[文档提示](https://elog.1874.cool/notion/gvnxobqogetukays#notion)配置 Notion 并获取 `token` 和 `databaseId`，在本地`.elog.env`中写入


```plain text
NOTION_TOKEN=获取的token
NOTION_DATABASE_ID=获取的databaseId
```


## 本地调试


在项目根目录运行同步命令


```shell
npm run sync:local
```


## 启动 Hexo


在项目根目录运行hexo启动命令，会自动打开本地博客


```shell
npm run server
```


## 配置 Hexo 博客


根据 [Hexo](https://hexo.io/) 文档和 [Butterfly](https://github.com/jerryc127/hexo-theme-butterfly) 主题配置文档，配置你的博客直到你满意为主，你也可以换别的主题，这里不做演示


## 提交代码到 github


本地访问没问题直接提交所有文件到 Github 仓库即可


## 部署到 Vercel


注册 Vercel 账号并绑定 Github，在 Vercel 导入 该项目，Vercel 会自动识别出该 Hexo 项目，不需要改动，直接选择 Deploy 部署。部署完成会有一个 Vercel 临时域名，你也可以绑定自己的域名。


![Untitled.png](/images/c283a83904894fe6bfaa24584cb6a86a.png)


![Untitled.png](/images/eceaaa23506d5f0d9210e8aa61d60205.png)


## 配置 Github Actions 权限


在 Github 仓库的设置中找到 `Actions-General`，打开流水线写入权限`Workflow permissions`


![Untitled.png](/images/53b8359150ff5294ad1e88d4638940eb.png)


## 配置环境变量


在本地运行时，用的是`.elog.env`文件中定义的 Notion 账号信息，而在 Github Actions 时，需要提前配置环境变量。


在 Github 仓库的设置中找到 `Secrets  and variables`，新增仓库的环境变量`NOTION_DATABASE_ID`和`NOTION_TOKEN`和`.elog.env`保持一致即可


![Untitled.png](/images/1c753720f799016f8edb30176253f472.png)


## 自动化部署


当在 Notion 中改动文档后，手动/自动触发 Github Actions流水线，会重新从 Notion 增量拉取文档，自动提交代码到 Github 仓库。


Vercel 会实时监测仓库代码，当有新的提交时都会重新部署博客。如此就实现了自动化部署博客。


整个流程的关键点就在于：如何手动/自动触发 Github Actions


在项目.`github/workflows/sync.yaml`中已经配置了外部 API 触发 Github Actions 事件，所以只需要调用 API 触发流水线即可。


### 手动触发


为了方便，这里提供一个部署在 Vercel 的免费公用的[**ServerlessAPI**](https://github.com/elog-x/serverless-api)，只需要配置好 URL 参数并浏览器访问即可触发流水线


```shell
https://serverless-api-elog.vercel.app/api/github?user=xxx&repo=xxx&event_type=deploy&token=xxx
```


### 自动触发


可在 Notion 中结合 Slack 触发，[参考教程](https://elog.1874.cool/notion/vy55q9xwlqlsfrvk)，这里就不做进一步演示了


# 自定义 Elog 配置


如果想自定义 Elog 配置，可访问 [Elog 文档](https://elog.1874.cool/)


# 博客示例


示例仓库：[https://github.com/LetTTGACO/notion-hexo](https://github.com/LetTTGACO/notion-hexo)


博客示例地址：[https://notion-hexo.vercel.app](https://notion-hexo.vercel.app/)

