---
title: Hexo相关记录
date: 2022-02-22 13:22:06
tags: [Hexo, git]
categories: [笔记]
description: hexo搭建过程和问题记录
---

## 使用git分支保存源码

1. 拉取分支

​		因Github Page要求使用master分支作为发布网站的源代码，我们只能用master分支来保存hexo生成的静态网页，对于博客源码，可以新建一个source分支来存储。在github上打开Pages对应的仓库，也就是以”username.github.io”命名的仓库，然后建立一个source分支，仓库的默认分支改为保存源码的source分支，这样通过`git clone`拉取的就是source分支代码了。

```bash
git clone https://github.com/JiaHaoFang/JiaHaoFang.github.io.git
```

2. 配置环境

```bash
# 安装hexo
npm install hexo
# git支持
npm install hexo-deployer-git -save
```



## 添加next主题配置

```bash
git clone https://github.com/theme-next/hexo-theme-next.git themes/next
```



## 显示摘要

```shell
# 显示摘要
npm install hexo-excerpt --save
```



## 用typora写作

### markdown语法支持

​		使用typora作为语法编辑器，使用插件使网页能够支持markdown的编辑格式

	1. 安装库

```bash
# markdown语法支持
npm uni hexo-renderer-marked --save
npm i @upupming/hexo-renderer-markdown-it-plus --save
```

2. 使用

​	在hexo站点配置文件_config.yml中添加如下配置，[详细配置](https://github.com/CHENXCHEN/hexo-renderer-markdown-it-plus):

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

​		为了与typora写作，使网页能够直接渲染typora编辑的markdown文档，需要在typora中设置图片保存在./$${filename}下，安装该插件即可（该插件md写着是为了与typora共同使用而开发）

```shell
# 图片链接
npm install hexo-image-link --save 
```



## 文章置顶

```shell
# 添加文章置顶功能，未使用
npm uninstall hexo-generator-index --save
npm install hexo-generator-index-pin-top --save
```

安装后在文章顶部增加字段`top: true`即可



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



## NexT8动画背景Canvas Nest和three配置

### 安装库

```shell
# Canvas-nest:
cd themes/next
git clone https://github.com/theme-next/theme-next-canvas-nest source/lib/canvas-nest
git clone https://github.com/theme-next/theme-next-three source/lib/three
```

### 使用

#### 方式一

`next`主题的`_config.yml`找到`canvas_ribbon`，在下面添加`Canvas-nest`动画的配置，`three`动画配置自带了，要启用哪个就将`enable`置为`true`。

```yaml
# JavaScript 3D library.
# Dependencies: https://github.com/next-theme/theme-next-three
three:
  enable: false
  three_waves: true
  canvas_lines: true
  canvas_sphere: true

# Canvas ribbon
# For more information: https://github.com/hustcc/ribbon.js
canvas_ribbon:
  enable: false
  size: 300 # The width of the ribbon
  alpha: 0.6 # The transparency of the ribbon
  zIndex: -1 # The display level of the ribbon

# Canvas-nest
# Dependencies: https://github.com/theme-next/theme-next-canvas-nest
canvas_nest:
  enable: true
  onmobile: true # display on mobile or not
  color: "0,0,255" # RGB values, use ',' to separate
  opacity: 0.5 # the opacity of line: 0~1
  zIndex: -1 # z-index property of the background
  count: 99 # the number of lines
```

#### 方式二

`canvas_nest`另外还需要多一些配置，参考canvas_nest的github仓库[README](https://github.com/theme-next/theme-next-canvas-nest/blob/master/README.md):

1. hexo目录下操作如下：

	```shell
	cd source
	mkdir _data
	```

2. 创建`footer.swig`文件，添加内容

	```javascript
	<script color="0,0,255" opacity="0.5" zIndex="-1" count="99" src="https://cdn.jsdelivr.net/npm/canvas-nest.js@1/dist/canvas-nest.js"></script>
	```

3. 然后在`next`主题下的`_config.yml`中找到`custom_file_path`添加一行配置`footer: source/_data/footer.swig`

	```yaml
	# Define custom file paths.
	# Create your custom files in site directory `source/_data` and uncomment needed files below.
	custom_file_path:
	  #head: source/_data/head.njk
	  #header: source/_data/header.njk
	  #sidebar: source/_data/sidebar.njk
	  #postMeta: source/_data/post-meta.njk
	  #postBodyEnd: source/_data/post-body-end.njk
	  #footer: source/_data/footer.njk
	  footer: source/_data/footer.swig
	  #bodyEnd: source/_data/body-end.njk
	  #variable: source/_data/variables.styl
	  #mixin: source/_data/mixins.styl
	  #style: source/_data/styles.styl
	```

> 如果同时使用方式1+2，会出现两套canvas_nest的动态背景



## 搜索引擎支持

### 各搜索引擎网站管理员中心

* Google：https://www.google.com/webmasters/tools
* bing：https://www.bing.com/webmasters/home
* 百度：不要sb

### 向搜索引擎提交站点

> 以Google为例，用HTML Meta标签的方法

​		~~Next 主题下，页面的 header 设置在`themes/next/layout/_partials/head.swig`内。默认也给我们提供了模板，感谢[开发者 iissnan](https://link.jianshu.com?t=https://github.com/iissnan)。我们只需要把下面标签补全即可~~

```html
{%- if theme.google_site_verification %}
  <meta name="google-site-verification" content="JXha4BvTgO89eWQaKW-9LD0MGEUp-Q4OtE3QLHZWvAs" />
{%- endif %}
{%- if theme.bing_site_verification %}
  <meta name="msvalidate.01" content="24EA09381FB8FF1E61E8AB18C3807D81" />
{%- endif %}
```

~~同时，在`themes/next/_config.yml`中将`google-site-verification`和`baidu_site_verification`的值设置为`true`即可。~~

​		next主题有更好的配置方式，千万不要采用修改head.swig文件的方法，不然在升级NexT版本时会遇到很多不必要的麻烦。修改`themes/next/_config.yml`文件：

```yaml
# Google Webmaster tools verification.
# See: https://www.google.com/webmasters
google_site_verification: xxxxxxxxxx
```

### 提交网站地图

> 提交网站地图加快索引

1. 安装插件sitemap

	```shell
	npm install hexo-generator-sitemap –save
	```

	在`themes/next/_config.yml`中修改：

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

​		生成静态网页，上传，然后在对应搜索引擎的webmasters中添加站点地图的地址即可

### 验证是否被检索

​		以GitHub Pages为例，新建的GitHub Pages是没有被谷歌检索的。在谷歌搜索栏中输入如下信息进行检索：

```html
site: jiahaofang.github.io
```
