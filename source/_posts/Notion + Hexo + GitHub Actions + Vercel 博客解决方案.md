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
cover: 'https://prod-files-secure.s3.us-west-2.amazonaws.com/809b2785-2afd-42d1-9139-e6f17eaa52c1/dc3ab2f7-66cb-4a5c-91bd-0c775b8e2aa5/%E5%B9%BD%E7%81%B5%E5%85%AC%E4%B8%BB.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466WHVSAI64%2F20250331%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250331T162951Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEEaCXVzLXdlc3QtMiJIMEYCIQCoOV0AIM43e8qQOq%2BxNLcSy%2FqSbN3H5mXnqC3Dg%2B0p8wIhAPIc3oNBvXy9EbJFyxkm8hiyhK86LsbAijFS1L6VG8O%2BKogECKn%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQABoMNjM3NDIzMTgzODA1IgxXmy5HSNuyYfd22FUq3AOrBYzehZ3rGRZaKMRInxharGI8hc2%2BbXxST4orszhLRnuFic0zCFFCOPEPlUVtB7%2Fb%2B6%2F5i%2FOCvzYqOGQ7vVCsvBxbBnU3p7pYBuD9YDTzyfFMM8niygIaU04p2WcG2tYtq%2FuXEv6qQSuh7hOQHFBTM5ehWyNUIAWzIubJPR8dPROyoxOvSm2AtEntsH1gAYiIsrE8GjIH%2FfIy%2B70MiWY3BzJDb5IAC89qWM6i9pQZP1vT8Hl5iu1cPNR4XudN3q3H9KU4mLch5lDzpogCYheJ944LzrxAkRsg5xLta%2FmGBGeJI52xM4I72%2FZKK%2B39RN6EK0YVnFfsHlLzxCkDR3tHchIPIyGAgfrxU6rP%2BGVmgoYh0P5B2nt5t0xQtxIBuze0gJyF63ADN2hkwN3EuTYSOKT0o5FmEo9P2u%2FnIo7OYZm52M5%2FlObCAKRnVIMJEYnSfbPyFeZOHIcsN6SMDGRdm8ZtSvVWd8gLqhz0Ow9tTwvuEcljLFCtgTspGK8DpwzquM%2BL6XEVDdhWNHACXzK%2FgfCbeVFdp9V29tQ1ah1XRyE%2B8zvkE66YAbr%2BHq6fePRfGAc75yQlI8WZ5dMy8Gz9aeU%2F6AtzTzdYPY2oviGBJOun5ogAnCtPecoRWTDVgau%2FBjqkASUPsBcZxVVN%2B%2F58O%2BhEYdiXUcA%2BNhSSV219YtWBEYUw8PinTJRT3bANl2y5aog9gLwtgy0nnIbVfyKP%2FcbRZDSIaHbZSzXimjb7gv8%2F7SwUM3rdJjEVSpbfNZ1O2NxHW29zf5%2BPc%2B9ba%2Ft8meEQ6odabm%2Bw9Q%2Bk2hIqLQKO7VS93sLb0479Bu8zCphzxBorjTvtWfjct%2Fs7AIZ3EvL06Lj8mWKP&X-Amz-Signature=c4472f19c14a230c59a7393d0fffba04714599775daf0c798c437b0db64bfdf4&X-Amz-SignedHeaders=host&x-id=GetObject'
urlname: 1c724191-cd14-81ce-a193-d17c96f48d1b
date: '2025-03-31 23:35:00'
updated: '2025-03-31 23:35:00'
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


![Untitled.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/809b2785-2afd-42d1-9139-e6f17eaa52c1/4467a32f-6a3d-4c4b-ab8c-ca3e42860df8/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466XY5DVMMZ%2F20250331%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250331T162952Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEEaCXVzLXdlc3QtMiJHMEUCIAVQbPt%2FellmvuQn4OpFAU5PzuvZCyFjOqXSPzqDyxgXAiEA4XqmOXYcZVgSIUDY2Der1OYM7DfI8%2BB9Rax74QW%2FrxcqiAQIqf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw2Mzc0MjMxODM4MDUiDKhTwQYUmUr%2FJZQGWSrcA1MDVaLH5vNaUlbEEHQaqsvBes3vluFqNdc57e7zhoEeYR78rBO7lDSdROdxeEqMhNYd2ElNDlUBGDGadtqc3pQf4IatCQvb2F2MnG0ZbkrsQ2ueirEYQfPtNQqIuvc0PNtFa6mQiwQRTKOk9aAOK40mkk3kFmDS8BI2%2FXk%2BV0kHVBetZWluxg10vnXJ7SwaQ5MbDcuAagi72g6YZIyPzLgc41l1Ffqw%2BczIOSaEyHk3X9N9gKOos2EJcDEJ%2FzA7lrHrlZzpvpx4VZHImk1IOwj3vsVMHyQxUIR5pGd15IJu4wVlQ%2BWJlyRoQSH4GqWrgYJjajO8zB7OShFZSJXB1KWI0nNPL0tsSDNcrjWQns1hOfclKnOOKRbegpKyx7i8bj8GEvOY3nuIgZ3MiuiqWei4RYy89a%2BH%2FVVRrjNZugcw2mCO9sS3%2Fay2ZyOFWTF3H%2F5BjtMiaYebxB22aZVrY51ESo96FG4aUdY2xpXDPb5b5GSkD6PueG6NPZIsC%2FZ%2BM2diThhHH6NdVxCA%2B8e%2FOe6IE7x3Pj8OWjAY2URMCoeDlLRJ64XsUxCpEvkmFQWq9w5iBCc338KBGd3aZjghu9FFxW8qLlU9NIv9XaXhcrUkSDJO2s3%2BvfS6SH8JMNiCq78GOqUB9WvBoOr74cabmbntSYq89dFkEUnUTzUOOgXVsUVsCVAs%2FDrjX12MydMsGLF%2BE5b9SrUEWYJJ1IouPezLXrWIniRMuOvXlsx4MqVD2PvwTs1EosAn%2BjEZTVbPaHDitslXdkqKsgkaQMKRPKeabGHiEFtlpf7TGT488X8mVYVaYis8Uv%2F1HMf8xo7ukz9WEypFcAIYFPpzJ%2Ff3bLUxEMZHbuoo2IeZ&X-Amz-Signature=ea51de9244ec6780a33320cbd28a7778bd13ad0cde30c4a37e02dc88382c1769&X-Amz-SignedHeaders=host&x-id=GetObject)


![Untitled.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/809b2785-2afd-42d1-9139-e6f17eaa52c1/3daedef9-b516-40e6-8c80-80bff543d62c/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466XY5DVMMZ%2F20250331%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250331T162952Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEEaCXVzLXdlc3QtMiJHMEUCIAVQbPt%2FellmvuQn4OpFAU5PzuvZCyFjOqXSPzqDyxgXAiEA4XqmOXYcZVgSIUDY2Der1OYM7DfI8%2BB9Rax74QW%2FrxcqiAQIqf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw2Mzc0MjMxODM4MDUiDKhTwQYUmUr%2FJZQGWSrcA1MDVaLH5vNaUlbEEHQaqsvBes3vluFqNdc57e7zhoEeYR78rBO7lDSdROdxeEqMhNYd2ElNDlUBGDGadtqc3pQf4IatCQvb2F2MnG0ZbkrsQ2ueirEYQfPtNQqIuvc0PNtFa6mQiwQRTKOk9aAOK40mkk3kFmDS8BI2%2FXk%2BV0kHVBetZWluxg10vnXJ7SwaQ5MbDcuAagi72g6YZIyPzLgc41l1Ffqw%2BczIOSaEyHk3X9N9gKOos2EJcDEJ%2FzA7lrHrlZzpvpx4VZHImk1IOwj3vsVMHyQxUIR5pGd15IJu4wVlQ%2BWJlyRoQSH4GqWrgYJjajO8zB7OShFZSJXB1KWI0nNPL0tsSDNcrjWQns1hOfclKnOOKRbegpKyx7i8bj8GEvOY3nuIgZ3MiuiqWei4RYy89a%2BH%2FVVRrjNZugcw2mCO9sS3%2Fay2ZyOFWTF3H%2F5BjtMiaYebxB22aZVrY51ESo96FG4aUdY2xpXDPb5b5GSkD6PueG6NPZIsC%2FZ%2BM2diThhHH6NdVxCA%2B8e%2FOe6IE7x3Pj8OWjAY2URMCoeDlLRJ64XsUxCpEvkmFQWq9w5iBCc338KBGd3aZjghu9FFxW8qLlU9NIv9XaXhcrUkSDJO2s3%2BvfS6SH8JMNiCq78GOqUB9WvBoOr74cabmbntSYq89dFkEUnUTzUOOgXVsUVsCVAs%2FDrjX12MydMsGLF%2BE5b9SrUEWYJJ1IouPezLXrWIniRMuOvXlsx4MqVD2PvwTs1EosAn%2BjEZTVbPaHDitslXdkqKsgkaQMKRPKeabGHiEFtlpf7TGT488X8mVYVaYis8Uv%2F1HMf8xo7ukz9WEypFcAIYFPpzJ%2Ff3bLUxEMZHbuoo2IeZ&X-Amz-Signature=3ab12952d944303045fc5c1ed4242b51233ffee261f9e8fbfb5f2dae8cd7385a&X-Amz-SignedHeaders=host&x-id=GetObject)


## 配置 Github Actions 权限


在 Github 仓库的设置中找到 `Actions-General`，打开流水线写入权限`Workflow permissions`


![Untitled.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/809b2785-2afd-42d1-9139-e6f17eaa52c1/655e63eb-9fca-4856-ad6d-9deb87907f4a/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466XY5DVMMZ%2F20250331%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250331T162952Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEEaCXVzLXdlc3QtMiJHMEUCIAVQbPt%2FellmvuQn4OpFAU5PzuvZCyFjOqXSPzqDyxgXAiEA4XqmOXYcZVgSIUDY2Der1OYM7DfI8%2BB9Rax74QW%2FrxcqiAQIqf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw2Mzc0MjMxODM4MDUiDKhTwQYUmUr%2FJZQGWSrcA1MDVaLH5vNaUlbEEHQaqsvBes3vluFqNdc57e7zhoEeYR78rBO7lDSdROdxeEqMhNYd2ElNDlUBGDGadtqc3pQf4IatCQvb2F2MnG0ZbkrsQ2ueirEYQfPtNQqIuvc0PNtFa6mQiwQRTKOk9aAOK40mkk3kFmDS8BI2%2FXk%2BV0kHVBetZWluxg10vnXJ7SwaQ5MbDcuAagi72g6YZIyPzLgc41l1Ffqw%2BczIOSaEyHk3X9N9gKOos2EJcDEJ%2FzA7lrHrlZzpvpx4VZHImk1IOwj3vsVMHyQxUIR5pGd15IJu4wVlQ%2BWJlyRoQSH4GqWrgYJjajO8zB7OShFZSJXB1KWI0nNPL0tsSDNcrjWQns1hOfclKnOOKRbegpKyx7i8bj8GEvOY3nuIgZ3MiuiqWei4RYy89a%2BH%2FVVRrjNZugcw2mCO9sS3%2Fay2ZyOFWTF3H%2F5BjtMiaYebxB22aZVrY51ESo96FG4aUdY2xpXDPb5b5GSkD6PueG6NPZIsC%2FZ%2BM2diThhHH6NdVxCA%2B8e%2FOe6IE7x3Pj8OWjAY2URMCoeDlLRJ64XsUxCpEvkmFQWq9w5iBCc338KBGd3aZjghu9FFxW8qLlU9NIv9XaXhcrUkSDJO2s3%2BvfS6SH8JMNiCq78GOqUB9WvBoOr74cabmbntSYq89dFkEUnUTzUOOgXVsUVsCVAs%2FDrjX12MydMsGLF%2BE5b9SrUEWYJJ1IouPezLXrWIniRMuOvXlsx4MqVD2PvwTs1EosAn%2BjEZTVbPaHDitslXdkqKsgkaQMKRPKeabGHiEFtlpf7TGT488X8mVYVaYis8Uv%2F1HMf8xo7ukz9WEypFcAIYFPpzJ%2Ff3bLUxEMZHbuoo2IeZ&X-Amz-Signature=b49392a61951bbf5763f3d8a2b8bebef0559bb8c012846d326b6445a0f2cf717&X-Amz-SignedHeaders=host&x-id=GetObject)


## 配置环境变量


在本地运行时，用的是`.elog.env`文件中定义的 Notion 账号信息，而在 Github Actions 时，需要提前配置环境变量。


在 Github 仓库的设置中找到 `Secrets  and variables`，新增仓库的环境变量`NOTION_DATABASE_ID`和`NOTION_TOKEN`和`.elog.env`保持一致即可


![Untitled.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/809b2785-2afd-42d1-9139-e6f17eaa52c1/00308cea-f5bb-4345-bc1d-7fce622ee54a/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466XY5DVMMZ%2F20250331%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250331T162952Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEEaCXVzLXdlc3QtMiJHMEUCIAVQbPt%2FellmvuQn4OpFAU5PzuvZCyFjOqXSPzqDyxgXAiEA4XqmOXYcZVgSIUDY2Der1OYM7DfI8%2BB9Rax74QW%2FrxcqiAQIqf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FARAAGgw2Mzc0MjMxODM4MDUiDKhTwQYUmUr%2FJZQGWSrcA1MDVaLH5vNaUlbEEHQaqsvBes3vluFqNdc57e7zhoEeYR78rBO7lDSdROdxeEqMhNYd2ElNDlUBGDGadtqc3pQf4IatCQvb2F2MnG0ZbkrsQ2ueirEYQfPtNQqIuvc0PNtFa6mQiwQRTKOk9aAOK40mkk3kFmDS8BI2%2FXk%2BV0kHVBetZWluxg10vnXJ7SwaQ5MbDcuAagi72g6YZIyPzLgc41l1Ffqw%2BczIOSaEyHk3X9N9gKOos2EJcDEJ%2FzA7lrHrlZzpvpx4VZHImk1IOwj3vsVMHyQxUIR5pGd15IJu4wVlQ%2BWJlyRoQSH4GqWrgYJjajO8zB7OShFZSJXB1KWI0nNPL0tsSDNcrjWQns1hOfclKnOOKRbegpKyx7i8bj8GEvOY3nuIgZ3MiuiqWei4RYy89a%2BH%2FVVRrjNZugcw2mCO9sS3%2Fay2ZyOFWTF3H%2F5BjtMiaYebxB22aZVrY51ESo96FG4aUdY2xpXDPb5b5GSkD6PueG6NPZIsC%2FZ%2BM2diThhHH6NdVxCA%2B8e%2FOe6IE7x3Pj8OWjAY2URMCoeDlLRJ64XsUxCpEvkmFQWq9w5iBCc338KBGd3aZjghu9FFxW8qLlU9NIv9XaXhcrUkSDJO2s3%2BvfS6SH8JMNiCq78GOqUB9WvBoOr74cabmbntSYq89dFkEUnUTzUOOgXVsUVsCVAs%2FDrjX12MydMsGLF%2BE5b9SrUEWYJJ1IouPezLXrWIniRMuOvXlsx4MqVD2PvwTs1EosAn%2BjEZTVbPaHDitslXdkqKsgkaQMKRPKeabGHiEFtlpf7TGT488X8mVYVaYis8Uv%2F1HMf8xo7ukz9WEypFcAIYFPpzJ%2Ff3bLUxEMZHbuoo2IeZ&X-Amz-Signature=8eeff32a9969ff4037fdf7869f0443562eb55660758671334f350f1a4a91686e&X-Amz-SignedHeaders=host&x-id=GetObject)


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

