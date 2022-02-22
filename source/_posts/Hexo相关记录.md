---
title: Hexo相关记录
date: 2022-02-22 13:22:06
tags: [Hexo, git]
categories: [笔记]
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
# git支持
npm install hexo-deployer-git -save
# 显示摘要
npm install hexo-excerpt --save
# 图片链接
npm install hexo-image-link --save 
# markdown语法支持
npm uni hexo-renderer-marked --save
npm i @upupming/hexo-renderer-markdown-it-plus --save
# 添加文章置顶功能，未使用
npm uninstall hexo-generator-index --save
npm install hexo-generator-index-pin-top --save
```



## 添加主题配置

```bash
git clone https://github.com/theme-next/hexo-theme-next.git themes/next
```



## 页脚增加网站运行时间统计

1. 找到 `\themes\next\layout\_partials\` 下面的 `footer.swig` 文件
2. 在合适的位置添加下面代码（通过运行调试，查看运行时间出现的位置）（45行）

```javascript
<!--添加运行时间-->
<span id="sitetime"></span>
<script language=javascript>
	function siteTime(){
		window.setTimeout("siteTime()", 1000);
		var seconds = 1000;
		var minutes = seconds * 60;
		var hours = minutes * 60;
		var days = hours * 24;
		var years = days * 365;
		var today = new Date();
		var todayYear = today.getFullYear();
		var todayMonth = today.getMonth()+1;
		var todayDate = today.getDate();
		var todayHour = today.getHours();
		var todayMinute = today.getMinutes();
		var todaySecond = today.getSeconds();
		/* 
		Date.UTC() -- 返回date对象距世界标准时间(UTC)1970年1月1日午夜之间的毫秒数(时间戳)
		year - 作为date对象的年份，为4位年份值
		month - 0-11之间的整数，做为date对象的月份
		day - 1-31之间的整数，做为date对象的天数
		hours - 0(午夜24点)-23之间的整数，做为date对象的小时数
		minutes - 0-59之间的整数，做为date对象的分钟数
		seconds - 0-59之间的整数，做为date对象的秒数
		microseconds - 0-999之间的整数，做为date对象的毫秒数
        */
		var t1 = Date.UTC(2022,02,21,13,30,00); //北京时间2018-2-13 00:00:00
		var t2 = Date.UTC(todayYear,todayMonth,todayDate,todayHour,todayMinute,todaySecond);
		var diff = t2-t1;
		var diffYears = Math.floor(diff/years);
		var diffDays = Math.floor((diff/days)-diffYears*365);
		var diffHours = Math.floor((diff-(diffYears*365+diffDays)*days)/hours);
		var diffMinutes = Math.floor((diff-(diffYears*365+diffDays)*days-diffHours*hours)/minutes);
		var diffSeconds = Math.floor((diff-(diffYears*365+diffDays)*days-diffHours*hours-diffMinutes*minutes)/seconds);
		document.getElementById("sitetime").innerHTML=" 已运行"+/*diffYears+" 年 "+*/diffDays+" 天 "+diffHours+" 小时 "+diffMinutes+" 分钟 "+diffSeconds+" 秒";
	}
	siteTime();
</script>
<!--添加运行时间-->
```

