# 从零开始快速搭建个人网站

有没有想过搭建一个个人网站——效果就像你现在看到的这个界面一样？试试这个基于 MkDocs 和 GitHub Pages 的方案吧！


## 为什么选择这个方案

这是优点：
- 完全免费，不需要自己付钱租服务器，也没有杂七杂八的 VIP 功能什么的
- 稳定，网站给予 GitHub Pages，随时在线
- 简单，不需要花非常多的精力去学习高级技术
- 社区活跃，遇到问题就去找人提问好了

需要注意：
- 对知识基础有少量要求，需要耐心学习一下下
- 网站，尤其是网站内的图片在中国大陆访问较缓慢，甚至有时无法加载


## 准备材料

- 非常少量的编程知识
- 非常少量的 MarkDown 语法知识
- 基本的英文知识
- 文章创意和内容
- 一个 GitHub 账号
- 学习新知识的好奇心
- 强烈推荐：一台装有 Python、Git 与合适 IDE 的电脑
- 不需要：网站服务器、Html 和 CSS 等知识基础
- 大约半个小时到一个小时的空闲时间——然后网站就永远是你的咯


## 首先，准备一篇 MarkDown 格式的文章吧

本文部署方案基于 MkDocs，可以通过 MarkDown 语法快速写出美观好看的文章排版，来试着学一学 MD 语法吧~

> 可以把 MarkDown 理解为简易版的 Word 噜

首先创建一个 `.txt` 文件，将后缀名改为 `.md`，并使用你的 IDE 打开它。

接下来，就可以在 IDE 中根据 [MarkDown 语法](https://docs.github.com/zh/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax) 编辑文件了，如果格式正确，应该会有高亮颜色指示哦？

> 如果你没有 IDE 又想实时预览 MD 文件的效果，不妨试试在 GitHub 文件编辑页预览，或借助第三方工具哦？例如 [Dillinger](https://dillinger.io/)


## 我们继续，试着在本地搭建一个网站预览吧

这一步，需要在本地运行程序和临时部署网站，因此需要敲一点代码咯。如果不想预览效果就直接发布网页的话，也可以跳过这一章，不过非常不推荐这么做就是了。

### 安装 Python

首先从 [Python 官网下载页](https://www.python.org/downloads/) 下载 Python，一般来讲最新版的就可以了。安装时一定要记得勾选那个什么 'Add Python to PATH' 来着。

### 安装 IDE

如果把代码比作文章的话，那么 IDE（集成开发环境）就是 Office 全家桶哩，使用 IDE 可以快速、高效、一站式地编辑和调试代码，省心省力。

虽说没有 IDE 也能写代码，不过安装后编辑效率更高，而且能避免大部分代码拼写错误，不妨试一试。我推荐使用 [VisualStudio Code](https://code.visualstudio.com/)

### 下载 MkDocs pip 包

使用 `Windows键 + R` 唤出启动窗口，输入 `cmd` 打开命令行。

在命令行中输入 `pip install mkdocs-material`，就会自动下载相关的依赖项目哩，省心省力。

> 国内下载速度可能较慢，试试这个清华大学提供的镜像源吧 `pip install mkdocs-material -i https://pypi.tuna.tsinghua.edu.cn/simple some-package`

> 命令行的复制和粘贴操作都是鼠标右键，不是 Ctrl+V 哦

> 从这一步起，你可以自行查阅 [MkDocs 官方文档](https://squidfunk.github.io/mkdocs-material) 啦

### 在本地部署网站吧

新建一个文件夹，并打开路径，用于存放整个网站的文件，文件夹和下面的文件名都必须使用英文，不要出现空格、特殊符号、汉字等。

清空资源管理器上方的路径栏，并输入 `cmd`，这样子会将后续操作指定在当前文件夹而不是其他地方。

然后输入 `mkdocs new .`，哇哦，在路径下生成了一些默认文件。

试试看？继续输入 `mkdocs serve`，好像发生了什么事？

来看看，在浏览器中输入 `localhost:8000`，哇哦，一份默认的网页就出来了！

### 用自己的内容替换默认页面吧

这个简单，找到 `/docs` 文件夹下的 `index.md` 文件，用自己的文件覆盖掉，保存之后就可以实时查看效果噜。

那么到目前为止，你已经有了一个本地的网页，这个网页目前只能在你的电脑上访问，下一步是将它推送给其他人看看！


## 将网站部署到 GitHub Pages 吧

### 注册 GitHub 账号

GitHub 是全球最大的程序员交流平台，用于代码托管、版本管理、协作等多种功能。

本文的网站部署方案基于 GitHub Pages 的免费网站托管服务，因此需要注册一个 GitHub 账号。

要注册账号，访问 <https://github.com>，点击右上角的 `Sign up` 按钮，按照提示来即可。

### 创建一个仓库（Repository）

Repo 是什么呢？就当做是一个在线的大型文件夹好了！

在 GitHub 主页右上角的加号按钮中选择 `New repository`，并且将仓库名（Repository name）精确地改为 `[你的 GitHub 用户名].github.io`，错一个字都不行。例如，如果你叫 `Chen-Luan`，这里就应该填 `Chen-Luan.github.io`。

然后，仓库必须是 `Public` 的，这意味着你的网页源代码将是公开的，否则不能免费使用这个功能。

没什么要注意的，点击下面的 `Create repository` 创建仓库吧！

### 将文件提交到仓库

有一行细细的 `uploading an existing file`，选择那个，然后将整个文件夹拖进去上传吧！然后只需要点击 `Commit changes` 来提交就好了。

### 让 GitHub 根据你的文档编写网页

回到你的仓库，点击 `Add file > Create new file` 按钮，在文件名中输入 `.github/workflows/ci.yml`，你会发现他自动把路径识别出来了，真的是太贴心了。

在文件正文部分输入这一大段内容：

```
name: ci 
on:
  push:
    branches:
      - master 
      - main
permissions:
  contents: write
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Configure Git Credentials
        run: |
          git config user.name github-actions[bot]
          git config user.email 41898282+github-actions[bot]@users.noreply.github.com
      - uses: actions/setup-python@v5
        with:
          python-version: 3.x
      - run: echo "cache_id=$(date --utc '+%V')" >> $GITHUB_ENV 
      - uses: actions/cache@v4
        with:
          key: mkdocs-material-${{ env.cache_id }}
          path: .cache
          restore-keys: |
            mkdocs-material-
      - run: pip install mkdocs-material 
      - run: mkdocs gh-deploy --force
```

保存文件在右上角绿色的 `Commit changes` 里面。

### 最后一步，调整发布设置

仓库上方偏右有一个 `Setting` 按钮，点击然后找到下方的 `Pages` 选项。

将 `Branch` 下的选项改为 `gh-pages` 和 `/(root)`，然后 `Save` 就可以哩！

如果一切正常，任何人访问 `https:[你的 GitHub 用户名].github.io`，都可以看到你的网页啦！
