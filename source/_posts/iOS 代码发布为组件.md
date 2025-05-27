---
categories: Programming
tags:
  - iOS
  - Cocoapods
status: 已发布
description: 使用 Cocoapods 发布代码作为组件
date: '2022-02-21 08:00:00'
permalink: ios-send2cocoapods/
title: iOS 代码发布为组件
urlname: 1c824191-cd14-8096-8654-ce5869028b0f
updated: '2025-05-27 18:27:00'
---

# 前期准备


## 远程仓库

> 准备好两个远程仓库，在GitHub上创建即可；
>
> 权限建议为public
>
>
- 用来存放源码的仓库，该仓库用来存放自己编写的组件的源码，其应为正确的目录结构，如何模板创建下文详细说；

    ```plain text
    <https://github.com/JiaHaoFang/SFAPPRealTimeLogCaughter.git>
    ```

- 用来存放组件的仓库，相当于xxxRepo、CocoaPods/Spec，是自己私有的组件仓库，用来存放.podspec文件；

    ```plain text
    <https://github.com/JiaHaoFang/SFPodRepo.git>
    ```

    - 注：该仓库非必要，可以使用官方仓库，此处为了熟悉流程使用自己创建的仓库

## 本地代码

> 由于该组件为一个完整工程作为组件发布，需要抽离
- 保证需要发布为组件的工程，其核心功能完整，去耦，能够实现核心功能的抽离
- 保证编译可通过，同时核心功能具备可移植性

# 本地目录创建


## 创建私有Repo目录

- 在～/.cocoapods/repo中能看到本地有的repo仓库，其中cocoapods为官方仓库，trunk也是官方仓库（历史遗留问题）；xxxRepo为公司私有仓库。
- 该步骤将创建私人仓库SFRepo，作用类似上文的官方仓库，后续将用来存放个人的组件。
- 或者也可以选择发布到官方仓库。
- 命令

    ```shell
    pod repo add SFPod <https://github.com/JiaHaoFang/SFPodRepo.git>
    ```

- 创建完成之后可通过命令查看目录结构

    ```shell
    open ~/.cocoapods/repos/SFPod
    ```


## 创建个人组件目录

- 发布的组件需要按照Cocoapod严格遵守官方给出的目录结构，官方给出了命令可以直接生成模版

    ```shell
    pod lib create SFAPPRealTimeLogCaughter
    ```

    - 过程中终端会向我们提出一系列问题，包括开发语言是OC还是Swift，demo程序，测试框架，界面测试。我选择了包含demo程序，没有测试框架.
- 生成模版后可以使用tree命令查看该文件夹下的目录结构

## 编辑模版

> 在2.2创建的公共模版就是组件的模板，我们需要将我们的代码添加进去将其作为自己的组件
- 我们需要发布的组件核心功能代码存放在/SFPod/Pod/Classes文件夹中
- 另外在Example中编写Demo测试自己的组件是否能正常工作，点击.xcworkspace可以作为一个完整工程运行
- 在写Example的时候，如果修改了Classes中文件的，需要pod install一下，将组件在自己的Demo中更新一下

## 编辑.podspec文件

- 自行Google

# 发布组件

> 如果上面的步骤完成了，恭喜，完成了一半

## 校验

- 当2中的步骤全部完成，我们可以使用下面的命令检验自己组件代码的合法性（主要是检验.podspec文件）

    ```shell
    pod lib lint
    # 只从本地验证你的pod能否通过验证。
    pod spec lint
    # 从本地和远程验证你的pod能否通过验证，建议使用这个
    --allow-warnings
    # 如何库代码中有警告导致通不过验证。加上这个忽略警告
    ```


## 提交源码

- 提交源码到个人仓库

    ```shell
    git add -a
    git commit -m "xxx"
    git push
    git tag 0.1.0
    git push --tags
    ```


## 发布组件到个人Repo

- 使用命令将.podspec文件添加到~/.cocoapods/repos/SFPod中，同时也发布到远程仓库

    ```shell
    pod repo push SFPod SFAPPRealTimeLogCaughter.podspec
    ```

- 执行完该步骤后， ~/.cocoapods/repos/SFPod会新增对应版本的.podspec文件

## 查询

- 搜索组件库

    ```shell
    pod search SFAPPRealTimeLogCaughter
    ```

- 搜索到了说明安装成功

# 使用组件

- 在Podfile文件新增源

    ```ruby
    source '<https://github.com/JiaHaoFang/SFPodRepo.git>'
    source '<https://github.com/CocoaPods/Specs.git>'
    ```

- 添加pod

    ```shell
    pod 'SFAPPRealTimeLogCaughter'
    ```

- 上面两项可以合起来写，合不起来。。。
- 执行 pod install
- 运行代码
> 参考资料：https://www.jianshu.com/p/103a6f0bf3a4
