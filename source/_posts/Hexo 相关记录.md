---
categories: Blog
tags:
  - hexo
status: 已发布
description: hexo搭建过程和问题记录
published: '2024-04-15 08:00:00'
permalink: hexo-record/
title: Hexo 相关记录
urlname: 1c824191-cd14-805c-a745-fdf1f4f8ecd9
date: '2025-04-01 17:58:00'
updated: '2025-05-26 19:11:00'
---

## 使用git分支保存源码

1. 拉取分支

    因Github Page要求使用master分支作为发布网站的源代码，我们只能用master分支来保存hexo生成的静态网页，对于博客源码，可以新建一个source分支来存储。在github上打开Pages对应的仓库，也就是以”[username.github.io](http://username.github.io/)”命名的仓库，然后建立一个source分支，仓库的默认分支改为保存源码的source分支，这样通过`git clone`拉取的就是source分支代码了。


    ```shell
    git clone <https://github.com/JiaHaoFang/JiaHaoFang.github.io.git>
    ```

2. 配置环境

    ```shell
    # 安装hexo
    npm install hexo
    # git支持
    npm install hexo-deployer-git -save
    ```


## 添加next主题配置


```shell
git clone <https://github.com/theme-next/hexo-theme-next.git> themes/next
```


## 显示摘要


```plain text
# 显示摘要
npm install hexo-excerpt --save
```


## 用typora写作


### markdown语法支持


使用typora作为语法编辑器，使用插件使网页能够支持markdown的编辑格式

1. 安装库

    ```shell
    # markdown语法支持
    npm uni hexo-renderer-marked --save
    npm i @upupming/hexo-renderer-markdown-it-plus --save
    ```

2. 使用
在hexo站点配置文件_config.yml中添加如下配置，[详细配置](https://github.com/CHENXCHEN/hexo-renderer-markdown-it-plus):

    ```yaml
    # Markdown config
    markdown_it_plus:
    	highlight: true
    	html: true
    	xhtmlOut: true
    	breaks: true
    	langPrefix:
    	linkify: true
    	typographer:
    	quotes: “”‘’
    	pre_class: highlight
    ```


### 图片链接


为了与typora写作，使网页能够直接渲染typora编辑的markdown文档，需要在typora中设置图片保存在./$${filename}下，安装该插件即可（该插件md写着是为了与typora共同使用而开发）


```plain text
# 图片链接
npm install hexo-image-link --save
```


## 文章置顶


```plain text
# 添加文章置顶功能，未使用
npm uninstall hexo-generator-index --save
npm install hexo-generator-index-pin-top --save
```


安装后在文章顶部增加字段`top: true`即可


## 页脚增加网站运行时间统计(NexT8.0 以下)

1. 找到 `\\themes\\next\\layout\\_partials\\` 下面的 `footer.swig` 文件
2. 在合适的位置添加下面代码（通过运行调试，查看运行时间出现的位置）（45行）

    ```plain text
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


## 页脚增加网站运行时间统计(NexT8.0 以上)

1. 找到 `themes/next/layout/_partials/footer.njk`文件
2. 在末尾加入以下代码

    ```plain text
    <!-- <br /> -->
    <!-- 网站运行时间的设置 -->
    <span id="timeDate">载入天数...</span>
    <!-- <span id="times">载入时分秒...</span> -->
    <script>
    var now = new Date();
    function createtime() {
    	var grt= new Date("02/21/2022 13:30:00");//(2022,02,21,13,30,00)
    	now.setTime(now.getTime()+250);
    	days = (now - grt ) / 1000 / 60 / 60 / 24; dnum = Math.floor(days);
    	hours = (now - grt ) / 1000 / 60 / 60 - (24 * dnum); hnum = Math.floor(hours);
    	if(String(hnum).length ==1 ){hnum = "0" + hnum;} minutes = (now - grt ) / 1000 /60 - (24 * 60 * dnum) - (60 * hnum);
    	mnum = Math.floor(minutes); if(String(mnum).length ==1 ){mnum = "0" + mnum;}
    	seconds = (now - grt ) / 1000 - (24 * 60 * 60 * dnum) - (60 * 60 * hnum) - (60 * mnum);
    	snum = Math.round(seconds);
    	if(String(snum).length ==1 ){snum = "0" + snum;}
    	// var times = document.getElementById("times").innerHTML = hnum + " 小时 " + mnum + " 分 " + snum + " 秒";
    	document.getElementById("timeDate").innerHTML = "本站已安全运行 "+dnum+" 天 "+hnum + " 小时 " + mnum + " 分 " + snum + " 秒";
    }
    setInterval("createtime()",250);
    </script>
    ```


## 搜索引擎支持

1. 各搜索引擎网站管理员中心
    - Google：[https://www.google.com/webmasters/tools](https://www.google.com/webmasters/tools)
    - bing：[https://www.bing.com/webmasters/home](https://www.bing.com/webmasters/home)
2. 向搜索引擎提交站点
    > 以Google为例

    修改`themes/next/_config.yml`文件：


    ```yaml
    # Google Webmaster tools verification.
    # See: <https://www.google.com/webmasters>
    google_site_verification: xxxxxxxxxx
    ```

3. 提交网站地图
    > 提交网站地图加快索引
    1. 安装插件sitemap

        ```plain text
        npm install hexo-generator-sitemap –save
        ```

    2. 在`themes/next/_config.yml`中修改：

        ```yaml
        menu:
        home: / || fa fa-home
        tags: /tags/ || fa fa-tags
        categories: /categories/ || fa fa-th
        archives: /archives/ || fa fa-archive
        about: /about/ || fa fa-user
        #schedule: /schedule/ || fa fa-calendar
        sitemap: /sitemap.xml || fa fa-sitemap
        #commonweal: /404/ || fa fa-heartbeat
        ```

    3. 生成静态网页，上传，然后在对应搜索引擎的webmasters中添加站点地图的地址即可
4. 验证是否被检索
以GitHub Pages为例，新建的GitHub Pages是没有被谷歌检索的。在谷歌搜索栏中输入如下信息进行检索：

    ```html
    site: jiahaofang.github.io
    ```


## 本地搜索功能

1. 在根目录执行命令

    ```shell
    npm install hexo-generator-searchdb --save
    ```

2. 配置 hexo 的`_config.yml`文件
在文件末尾新增配置项

    ```yaml
    search:
     	path: search.xml
     	field: post
     	format: html
     	limit: 10000
    ```

3. 配置 `NexT` 主题的 `_config.yml`（根据 next 文档，应为`/_config.next.yml`）

    ```yaml
    # Local search
    local_search:
    	enable: true
    ```

