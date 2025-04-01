---
categories: 博客折腾手册
tags:
  - elog
  - notion
  - hexo
  - blog
status: 已发布
description: ''
permalink: notion-hexo/
title: Notion + Hexo + GitHub Actions + Vercel 博客解决方案
cover: 'https://prod-files-secure.s3.us-west-2.amazonaws.com/809b2785-2afd-42d1-9139-e6f17eaa52c1/dc3ab2f7-66cb-4a5c-91bd-0c775b8e2aa5/%E5%B9%BD%E7%81%B5%E5%85%AC%E4%B8%BB.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466S4O7535Y%2F20250401%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250401T043814Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEsaCXVzLXdlc3QtMiJHMEUCIDjdMsB4KS%2BA67IEH0HN46hO6hXLibViTu9OD8LN9%2B%2BLAiEAkXgAvZIydkSkb5zxkYdvjb%2BKRY4n5jiytDOzErwfN7gqiAQItP%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw2Mzc0MjMxODM4MDUiDNjgSjaMVSgyPS8M4yrcA2m%2F4N80L5vGNLXDj53rYhO7BtaMz3oV2%2BcFi5Vi5oiLlMzEul1oShCALdcpQyKAFvPQJDcP%2FMJruLmVNQ0qv5kSy44jKpe%2F3EB7aZTWesnt4wk4lSJ0CQrWP98xMp3K8Wel8wd7Idr3OmjHWf5Vr0ZUr%2Fvi32RZRj%2FvAMXjTCdqMQKqw4EMFLF1S%2BJLPC8nEJGudciOBGSinjVroQ3SnTC%2FLddb9SYgdw86rC1H0aFOqoerdG%2BrhT9mZ3X6AjvENYi%2B03bOh2gZp0q3gwO2WTjETbIZDo8uwdv1epw1IpDyk%2FWIX3r%2BVOZn8QjG%2BtaR12zkJ2Xc2fYPKxpIbaU12O%2FoQHnxhuUA2%2Fiw911AlEcZfUGJIC7PqoQqW5BmmRJwJsW5cl3pbRBwA5lNxraGW%2BjH5d70hfN5JUB9t1dMnD5SodOZenLPixY1cytGhaj4%2FGRC5EcsCZx8A7v5LS%2B1K69OlGQU4QSwYQg%2BuAU1vX%2B8nIPT6OfJrcCdBgYyMYZUB%2Fce83O371%2B4Qq3lRSydV3YO6ubnUE4I0UsTMlqiyGbwn13uIaXh8TETO3h8%2FbmUK75dUIXkVglB8cAOrjGLYFz9CCTGYjHfmV0lYYe%2BvSgjrpDdBnJkt8HefzADMN%2Bkrb8GOqUBEAhq2jn1cuyrgoXyv4zO8c8XPE0NBbKBdyjcFhjUZu4PZ7aJo8wqrxt%2FTHa9ZeTm2GRCmTHOyY9b6qJ%2BoOa600sTCWwIqoroXZT9972SB0vgDP7aiF2elwYWVOyrvGJ%2BIgn9E5%2BuQnd3c8dkR%2BeYRBm0I8ugCE4GVwK3JMduac%2FlJqx%2FhnZt8VkC0HulRwz0oMd2E1OkiLYnbrlfrLGcuyD5cRyx&X-Amz-Signature=e417cbf6e472de0a4b4e16f6e8dde65c0475db46526b926bdc179798e1d8cdd7&X-Amz-SignedHeaders=host&x-id=GetObject'
urlname: 1c724191-cd14-81ce-a193-d17c96f48d1b
date: '2025-03-31 23:35:00'
updated: '2025-04-01 10:33:00'
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


![Untitled.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/809b2785-2afd-42d1-9139-e6f17eaa52c1/4467a32f-6a3d-4c4b-ab8c-ca3e42860df8/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466X7HHJHVE%2F20250401%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250401T043815Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEsaCXVzLXdlc3QtMiJGMEQCIFwXM1FQ3ftSnS8pv6W%2FiNrTxwKwvcmL03X9dBI6%2Fl6TAiBKTEtziaGLnp6L5bgMLQ6hy3jHV3jSjk5QwQSTZWhhzSqIBAi0%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDYzNzQyMzE4MzgwNSIMgE%2BbrlzTUphUPNpUKtwDVQeF2FxCFWP46PU2A7p8Ik4LuKP4Wb9M477yRPMEp2NSvwrR%2Bx%2FYmnMaBbtQFV8HD%2FrPzPqHBh5Ov3MAHtvqXcAK9kEj0MM7o7dqpTn%2FHVo0bR%2BMC40kukkj7buqqETZkkeRfcgb7x4AbdUC7bMpxBafQTqPW505KaLhZOGFHRh2VhPRhQsFi9bKFRbF5I9%2FfLYnWGH%2BSC0RUXT%2B1z2ZIXwCHS7Wp%2BiCJzkLn14hHN%2FPwHnvyKjVPoRzRlAdJD0XjNwpuHis30ro7EG03%2BHFKlLHcXeDaxFaFfhZNXrElwpmdXZ2MPXNlSq4eE1uX4H6VSXQMSa9EWQaQ5e3iR52Ir0k%2BBhox3H3uwICW%2BLtTd5NLqEi9MvrwBX05OS1sEVFUeiutlZbLUs5mWVtNohB8IExOz4vv8Aubt8ebIt%2Fk6Ip9mc2%2BPQ7eZhsRTVsKvkgpQdvIWVHdtEJQ1HpfgIcBpaVwrPj%2FuvU67jBauhOjtWkcn%2BxjFgn4NAqdhobHQzUaLbSFZOvKslruvwvza7e90N90wsX6g7Qpcl7PgqGQqeaOpjBR8%2F3VYAu%2BOUKkuwFkOG655OAxw%2Bp%2B%2BQ1ahmECSn8PTFY6aLNSVR17sT84weF9O0Rni%2BnEaYmbEMwrKStvwY6pgFr27tihkKh7BWZRWQls4N2UIQ61LIyAZAXXv4UkTAIAcgzjUl5dVwEelp%2BHsCdSVqE3ypg4yjjh0oDVw6lqp6jMTw6fjZi2s%2FBUHnNIKSPy4MhgwqH4t2alui1eB6t6wQagD6vqmbMdSK%2FvtQs4k2hbuUDPa4f2HzKvsifiC%2FJNHZnZmq3fSvn5q66UhhnapV6JilBnGmjXki5G6bQ%2BS%2B9lPVFKZqk&X-Amz-Signature=fd857de88a90445b95dd66441eccb30e9a5b8fa74feeb9a34e844a7ea264933d&X-Amz-SignedHeaders=host&x-id=GetObject)


![Untitled.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/809b2785-2afd-42d1-9139-e6f17eaa52c1/3daedef9-b516-40e6-8c80-80bff543d62c/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466X7HHJHVE%2F20250401%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250401T043815Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEsaCXVzLXdlc3QtMiJGMEQCIFwXM1FQ3ftSnS8pv6W%2FiNrTxwKwvcmL03X9dBI6%2Fl6TAiBKTEtziaGLnp6L5bgMLQ6hy3jHV3jSjk5QwQSTZWhhzSqIBAi0%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDYzNzQyMzE4MzgwNSIMgE%2BbrlzTUphUPNpUKtwDVQeF2FxCFWP46PU2A7p8Ik4LuKP4Wb9M477yRPMEp2NSvwrR%2Bx%2FYmnMaBbtQFV8HD%2FrPzPqHBh5Ov3MAHtvqXcAK9kEj0MM7o7dqpTn%2FHVo0bR%2BMC40kukkj7buqqETZkkeRfcgb7x4AbdUC7bMpxBafQTqPW505KaLhZOGFHRh2VhPRhQsFi9bKFRbF5I9%2FfLYnWGH%2BSC0RUXT%2B1z2ZIXwCHS7Wp%2BiCJzkLn14hHN%2FPwHnvyKjVPoRzRlAdJD0XjNwpuHis30ro7EG03%2BHFKlLHcXeDaxFaFfhZNXrElwpmdXZ2MPXNlSq4eE1uX4H6VSXQMSa9EWQaQ5e3iR52Ir0k%2BBhox3H3uwICW%2BLtTd5NLqEi9MvrwBX05OS1sEVFUeiutlZbLUs5mWVtNohB8IExOz4vv8Aubt8ebIt%2Fk6Ip9mc2%2BPQ7eZhsRTVsKvkgpQdvIWVHdtEJQ1HpfgIcBpaVwrPj%2FuvU67jBauhOjtWkcn%2BxjFgn4NAqdhobHQzUaLbSFZOvKslruvwvza7e90N90wsX6g7Qpcl7PgqGQqeaOpjBR8%2F3VYAu%2BOUKkuwFkOG655OAxw%2Bp%2B%2BQ1ahmECSn8PTFY6aLNSVR17sT84weF9O0Rni%2BnEaYmbEMwrKStvwY6pgFr27tihkKh7BWZRWQls4N2UIQ61LIyAZAXXv4UkTAIAcgzjUl5dVwEelp%2BHsCdSVqE3ypg4yjjh0oDVw6lqp6jMTw6fjZi2s%2FBUHnNIKSPy4MhgwqH4t2alui1eB6t6wQagD6vqmbMdSK%2FvtQs4k2hbuUDPa4f2HzKvsifiC%2FJNHZnZmq3fSvn5q66UhhnapV6JilBnGmjXki5G6bQ%2BS%2B9lPVFKZqk&X-Amz-Signature=a1b3d602fa6419eb486965b4b06bfbcde1cbc37af8bef18db9254c5e7811241b&X-Amz-SignedHeaders=host&x-id=GetObject)


## 配置 Github Actions 权限


在 Github 仓库的设置中找到 `Actions-General`，打开流水线写入权限`Workflow permissions`


![Untitled.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/809b2785-2afd-42d1-9139-e6f17eaa52c1/655e63eb-9fca-4856-ad6d-9deb87907f4a/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466X7HHJHVE%2F20250401%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250401T043815Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEsaCXVzLXdlc3QtMiJGMEQCIFwXM1FQ3ftSnS8pv6W%2FiNrTxwKwvcmL03X9dBI6%2Fl6TAiBKTEtziaGLnp6L5bgMLQ6hy3jHV3jSjk5QwQSTZWhhzSqIBAi0%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDYzNzQyMzE4MzgwNSIMgE%2BbrlzTUphUPNpUKtwDVQeF2FxCFWP46PU2A7p8Ik4LuKP4Wb9M477yRPMEp2NSvwrR%2Bx%2FYmnMaBbtQFV8HD%2FrPzPqHBh5Ov3MAHtvqXcAK9kEj0MM7o7dqpTn%2FHVo0bR%2BMC40kukkj7buqqETZkkeRfcgb7x4AbdUC7bMpxBafQTqPW505KaLhZOGFHRh2VhPRhQsFi9bKFRbF5I9%2FfLYnWGH%2BSC0RUXT%2B1z2ZIXwCHS7Wp%2BiCJzkLn14hHN%2FPwHnvyKjVPoRzRlAdJD0XjNwpuHis30ro7EG03%2BHFKlLHcXeDaxFaFfhZNXrElwpmdXZ2MPXNlSq4eE1uX4H6VSXQMSa9EWQaQ5e3iR52Ir0k%2BBhox3H3uwICW%2BLtTd5NLqEi9MvrwBX05OS1sEVFUeiutlZbLUs5mWVtNohB8IExOz4vv8Aubt8ebIt%2Fk6Ip9mc2%2BPQ7eZhsRTVsKvkgpQdvIWVHdtEJQ1HpfgIcBpaVwrPj%2FuvU67jBauhOjtWkcn%2BxjFgn4NAqdhobHQzUaLbSFZOvKslruvwvza7e90N90wsX6g7Qpcl7PgqGQqeaOpjBR8%2F3VYAu%2BOUKkuwFkOG655OAxw%2Bp%2B%2BQ1ahmECSn8PTFY6aLNSVR17sT84weF9O0Rni%2BnEaYmbEMwrKStvwY6pgFr27tihkKh7BWZRWQls4N2UIQ61LIyAZAXXv4UkTAIAcgzjUl5dVwEelp%2BHsCdSVqE3ypg4yjjh0oDVw6lqp6jMTw6fjZi2s%2FBUHnNIKSPy4MhgwqH4t2alui1eB6t6wQagD6vqmbMdSK%2FvtQs4k2hbuUDPa4f2HzKvsifiC%2FJNHZnZmq3fSvn5q66UhhnapV6JilBnGmjXki5G6bQ%2BS%2B9lPVFKZqk&X-Amz-Signature=a3ec2369ba1751a9a257bf3d818680d78c8af6b1a8963aef379f6ec6737f79ea&X-Amz-SignedHeaders=host&x-id=GetObject)


## 配置环境变量


在本地运行时，用的是`.elog.env`文件中定义的 Notion 账号信息，而在 Github Actions 时，需要提前配置环境变量。


在 Github 仓库的设置中找到 `Secrets  and variables`，新增仓库的环境变量`NOTION_DATABASE_ID`和`NOTION_TOKEN`和`.elog.env`保持一致即可


![Untitled.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/809b2785-2afd-42d1-9139-e6f17eaa52c1/00308cea-f5bb-4345-bc1d-7fce622ee54a/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466X7HHJHVE%2F20250401%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250401T043815Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEsaCXVzLXdlc3QtMiJGMEQCIFwXM1FQ3ftSnS8pv6W%2FiNrTxwKwvcmL03X9dBI6%2Fl6TAiBKTEtziaGLnp6L5bgMLQ6hy3jHV3jSjk5QwQSTZWhhzSqIBAi0%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDYzNzQyMzE4MzgwNSIMgE%2BbrlzTUphUPNpUKtwDVQeF2FxCFWP46PU2A7p8Ik4LuKP4Wb9M477yRPMEp2NSvwrR%2Bx%2FYmnMaBbtQFV8HD%2FrPzPqHBh5Ov3MAHtvqXcAK9kEj0MM7o7dqpTn%2FHVo0bR%2BMC40kukkj7buqqETZkkeRfcgb7x4AbdUC7bMpxBafQTqPW505KaLhZOGFHRh2VhPRhQsFi9bKFRbF5I9%2FfLYnWGH%2BSC0RUXT%2B1z2ZIXwCHS7Wp%2BiCJzkLn14hHN%2FPwHnvyKjVPoRzRlAdJD0XjNwpuHis30ro7EG03%2BHFKlLHcXeDaxFaFfhZNXrElwpmdXZ2MPXNlSq4eE1uX4H6VSXQMSa9EWQaQ5e3iR52Ir0k%2BBhox3H3uwICW%2BLtTd5NLqEi9MvrwBX05OS1sEVFUeiutlZbLUs5mWVtNohB8IExOz4vv8Aubt8ebIt%2Fk6Ip9mc2%2BPQ7eZhsRTVsKvkgpQdvIWVHdtEJQ1HpfgIcBpaVwrPj%2FuvU67jBauhOjtWkcn%2BxjFgn4NAqdhobHQzUaLbSFZOvKslruvwvza7e90N90wsX6g7Qpcl7PgqGQqeaOpjBR8%2F3VYAu%2BOUKkuwFkOG655OAxw%2Bp%2B%2BQ1ahmECSn8PTFY6aLNSVR17sT84weF9O0Rni%2BnEaYmbEMwrKStvwY6pgFr27tihkKh7BWZRWQls4N2UIQ61LIyAZAXXv4UkTAIAcgzjUl5dVwEelp%2BHsCdSVqE3ypg4yjjh0oDVw6lqp6jMTw6fjZi2s%2FBUHnNIKSPy4MhgwqH4t2alui1eB6t6wQagD6vqmbMdSK%2FvtQs4k2hbuUDPa4f2HzKvsifiC%2FJNHZnZmq3fSvn5q66UhhnapV6JilBnGmjXki5G6bQ%2BS%2B9lPVFKZqk&X-Amz-Signature=0d6700ea24fe4e364d35f4c39b2852b411414e54f77aa934576edfe94478b299&X-Amz-SignedHeaders=host&x-id=GetObject)


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

