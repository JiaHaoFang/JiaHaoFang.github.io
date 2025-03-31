
# 前言


在使用 Elog 同步Notion 上的文档时，因为是将富文本向下转成 markdown，会有很多样式损失。这是由于 markdown 样式集合＜ Notion 样式集合。所以在 Notion 上书写时，得按照 markdown 支持的样式进行写作。

> 可以在[这里](/notion-example/) 看到 Notion 文档被导出为 markdown 时的样式损失程度

如果你不能接受样式损失，可能 markdown 并不适合你，隔壁 [NotionNext](https://github.com/tangly1024/NotionNext) 可能更适合你搭建博客。


# Notion 格式注意点


### 不要使用 markdown 不支持的样式/语法


例如字体颜色、多级折叠块、书签、数据库、嵌入等。导出为 markdown 都不能正常展示。


### 适当使用 markdown 形式的超链接


在文档中使用markdown 形式的超链接可以解决部分路由问题，例如链接Notion文档的超链接会被自动处理为非完整路径，或者手动链接到某个相对路由，可以使用以下方式解决


```plain text
// 使用[]() markdown 超链接语法
点击 [下一篇](/notion/deploy-platform) 继续配置部署平台
```


### 请勿上传视频、文件到 Notion 文档


Elog 还暂不支持将Notion 中的视频、文件暂不支持上传到图床。如果下载到本地，短期内能访问，但因为 notion 的链接具有时效性，一般是一个小时，之后就不能查看了。


# Elog 配置详解


参考[Elog 文档](https://elog.1874.cool/)，本博客的 Elog 的配置如下：


```javascript
module.exports = {
  write: {
    platform: 'notion',
    notion: {
      token: process.env.NOTION_TOKEN,
      databaseId: process.env.NOTION_DATABASE_ID,
      filter: { property: 'status', select: { equals: '已发布' }}
    }
  },
  deploy: {
    platform: 'local',
    local: {
      outputDir: './source/_posts',
      filename: 'title',
      format: 'markdown',
      frontMatter: {
        enable: true,
        include: ['categories', 'tags', 'title', 'date', 'updated', 'permalink', 'cover', 'description']
      },
      formatExt: './format-image.js',
    }
  },
  image: {
    enable: true,
    platform: 'local',
    local: {
      outputDir: './source/images',
      prefixKey: '/images'
    }
  },
}
```


## Notion 配置


![Untitled.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/809b2785-2afd-42d1-9139-e6f17eaa52c1/37f1ce20-a930-40df-8bf2-e65ba2ceff0d/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466YEOQ6GLX%2F20250331%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250331T161612Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEAaCXVzLXdlc3QtMiJGMEQCIHKy73kp1MeWL9IaT3q2UJDMVgUwRjzpa6voVW%2FntTJ6AiBvoRGDhD9MZA3Ul0Md0xL6tqqOg2ayQYFlgH8Vun6C5SqIBAip%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDYzNzQyMzE4MzgwNSIMel3cLTZyusgW1A5oKtwDSptCl4xjmA%2Fd%2BbbNhUJ4AVLunDhWK91jc3Rqj%2BBJl9mooZQCzaPXFXrNxRxuH3j2BvrjpCbR4BgTXo3vb8yW8B2Jz5PGHWliHJgGgTNZRwj3xeMubWa4gHtuYAdhByK%2BMPxz2Q1BO4Fh%2BddWd24zdf04WrupnDbvDYRtHA81MoL5RA92C%2BLJyfVUvYgiLdMpfx3qKKmjSb0Ipufqm29KiHT6rCOE0d2t7jzkIyKncewrMsYKaW9X%2BYpKCx%2FrgB51j1gFz8dT2JyeDN2qXn984e%2B2x2fR8os1XkPv78UjUOZLpY1F0aY3Nf2f9dfYpdwGBZisEEGzKlOotgAux2YXncoJ8%2BGU2hsZFcjjgWBxz95NoIwy3i3qf%2By1BsiuU9oMFML9JMSghSxGL5PtIUrrDTTmX%2FMIQRnrZJzKAiwI9tg2qRWpTbWXGXvUt4pzWUeE%2FkcDbwHYt%2Fe5XFcF6rIo0AmpRu6CMBJ%2Bk2%2Bqivo4N4rWrsRjLwv796XnEXHDYIpaDPjE5cru%2BhrOWoShlFZibK0e4CroC%2FkfE%2F59uR6sS%2BE5mNNuhuWvhzg0LpjYkTP%2BEIkb24ExIwCzxLTn8lPkraFgb5zTEQ5RJz0vGQgfywPVrRdn4GGvFvk5HCMw8ueqvwY6pgHzG3UvgJaaF26EFDykRZvARiIMsEiTkwi%2F4gW8QHgv0QClktA5iHU0K5abYXsesIVQAUB%2Fm2V6E7rmo8DOY72GWTWF2kucwRDyAMOpXwFGaqZxmbU6eitLPyWdw%2BrkoguRtzdQwoTcNPpCBGRKxm%2BrDwMDIOVP%2FIIuQ%2FWuEnOyfNdnilVCo96SdZLY%2Ftbkaznwbw25C6tRqiCPq5EP0Nxhiv%2BJT5K%2B&X-Amz-Signature=e16118c6fe69149c7b7d6649f4f5011447cdcdf48e14d67c5ca25a9cfc19d236&X-Amz-SignedHeaders=host&x-id=GetObject)


根据 [Hexo 的 FrontMatter 配置文档](https://hexo.io/zh-cn/docs/front-matter)，和 [Butterfly主题的 FrontMatter 配置文档](https://butterfly.js.org/posts/dc584b87/?highlight=front%20matter#Post-Front-matter)，可以将需要的参数作为 notion 数据库的字段来设置。一般来说，主题的 FrontMatter 为 Hexo在一些基础字段是共用的。

- `permalink`为文档的永久链接，例如`https://notion-hexo.vercel.app/notion-hexo/`，注意记得在结尾加上`/`
- `categories`为文档的分类
- `tags` 为文档的标签
- `description`为主题配置中可选的文档描述

```javascript
notion: {
  token: process.env.NOTION_TOKEN,
  databaseId: process.env.NOTION_DATABASE_ID,
  filter: { property: 'status', select: { equals: '已发布' }},
}
```

- `token`为 Notion Token，可从[此处](https://elog.1874.cool/notion/gvnxobqogetukays#token-1)获取
- `databaseId`为数据库的 ID，可从[此处](https://elog.1874.cool/notion/gvnxobqogetukays#databaseid)获取
- `filter`表示 Elog 将下载 notion 数据库属性为`status=已发布`的文档

## 本地配置


![Untitled.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/809b2785-2afd-42d1-9139-e6f17eaa52c1/804acc7d-2f1b-4daa-95f1-5dcbd316fe76/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466YEOQ6GLX%2F20250331%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250331T161612Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEEAaCXVzLXdlc3QtMiJGMEQCIHKy73kp1MeWL9IaT3q2UJDMVgUwRjzpa6voVW%2FntTJ6AiBvoRGDhD9MZA3Ul0Md0xL6tqqOg2ayQYFlgH8Vun6C5SqIBAip%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDYzNzQyMzE4MzgwNSIMel3cLTZyusgW1A5oKtwDSptCl4xjmA%2Fd%2BbbNhUJ4AVLunDhWK91jc3Rqj%2BBJl9mooZQCzaPXFXrNxRxuH3j2BvrjpCbR4BgTXo3vb8yW8B2Jz5PGHWliHJgGgTNZRwj3xeMubWa4gHtuYAdhByK%2BMPxz2Q1BO4Fh%2BddWd24zdf04WrupnDbvDYRtHA81MoL5RA92C%2BLJyfVUvYgiLdMpfx3qKKmjSb0Ipufqm29KiHT6rCOE0d2t7jzkIyKncewrMsYKaW9X%2BYpKCx%2FrgB51j1gFz8dT2JyeDN2qXn984e%2B2x2fR8os1XkPv78UjUOZLpY1F0aY3Nf2f9dfYpdwGBZisEEGzKlOotgAux2YXncoJ8%2BGU2hsZFcjjgWBxz95NoIwy3i3qf%2By1BsiuU9oMFML9JMSghSxGL5PtIUrrDTTmX%2FMIQRnrZJzKAiwI9tg2qRWpTbWXGXvUt4pzWUeE%2FkcDbwHYt%2Fe5XFcF6rIo0AmpRu6CMBJ%2Bk2%2Bqivo4N4rWrsRjLwv796XnEXHDYIpaDPjE5cru%2BhrOWoShlFZibK0e4CroC%2FkfE%2F59uR6sS%2BE5mNNuhuWvhzg0LpjYkTP%2BEIkb24ExIwCzxLTn8lPkraFgb5zTEQ5RJz0vGQgfywPVrRdn4GGvFvk5HCMw8ueqvwY6pgHzG3UvgJaaF26EFDykRZvARiIMsEiTkwi%2F4gW8QHgv0QClktA5iHU0K5abYXsesIVQAUB%2Fm2V6E7rmo8DOY72GWTWF2kucwRDyAMOpXwFGaqZxmbU6eitLPyWdw%2BrkoguRtzdQwoTcNPpCBGRKxm%2BrDwMDIOVP%2FIIuQ%2FWuEnOyfNdnilVCo96SdZLY%2Ftbkaznwbw25C6tRqiCPq5EP0Nxhiv%2BJT5K%2B&X-Amz-Signature=33888c7cfa5da2f815232831f9ab63d419ef44a773b6f083bdcac0249ff8a0fe&X-Amz-SignedHeaders=host&x-id=GetObject)


```javascript
local: {
  outputDir: './source/_posts',
  filename: 'title',
  format: 'markdown',
  frontMatter: {
    enable: true,
    include: ['categories', 'tags', 'title', 'date', 'updated', 'permalink', 'cover', 'description']
  },
  formatExt: './format-image.js',
}
```

- `outputDir`表示文档的存放位置为项目根目录下的`source/_posts`文件夹中
- `filename`表示文档将以数据库的 `title` 字段命名，也就是文档名
- `format`表示文档将以 markdown 的形式保存
- `frontMatter.enable`表示在 markdown 文档开头添加 Front Matter
- `frontMatter.include`表示只输出数组中存在的字段，数据库的其他字段忽略
- `formatExt=./format-image.js`表示将使用自定义文档插件，插件路径为项目根目录下的`format-image.js`文件

### format-image.js


该文档插件的作用就是将 notion 文档最上面的`封面图 cover`，也下载到本地，并替换为本地图片链接


```javascript
const { matterMarkdownAdapter } = require('@elog/cli')

/**
 * 自定义文档插件
 * @param {DocDetail} doc doc的类型定义为 DocDetail
 * @param {ImageClient} imageClient 图床下载器
 * @return {Promise<DocDetail>} 返回处理后的文档对象
 */
const format = async (doc, imageClient) => {
  const cover = doc.properties.cover
  if (imageClient)  {
    // 只有启用图床平台image.enable=true时，imageClient才能用，否则请自行实现图片上传
    const url = await imageClient.uploadImageFromUrl(cover, doc)
    // cover链接替换为本地图片
    doc.properties.cover = url
  }
  // 将文档内容格式化为带有 Front Matter 的 markdown
  doc.body = matterMarkdownAdapter(doc);
  // 返回整个文档对象
  return doc;
};

module.exports = {
  // 必须要暴露此方法
  format,
};
```


## 图床配置


```javascript
local: {
  outputDir: './source/images',
  prefixKey: '/images'
}
```

- `outputDir`表示图片的存放位置为项目根目录下的`source/images`文件夹中
- `prefixKey=/images`表示图片的统一前缀为`/images`，因为 Hexo 会将`source/images`文件夹视为[静态资源根目录](https://hexo.io/zh-cn/docs/asset-folders)，统一将图片放在这里，并指定图片前缀，Hexo 才能找到此图片

## 更多 Elog 配置详情，请阅读 [Elog 文档](https://elog.1874.cool/)

