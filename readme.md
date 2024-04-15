# 湖南大学本科毕业论文（大理） Typst 模板

不够完善，正在改进。

## 使用方法

一般来说需要修改的只有 `main.typ` 和 `example.bib` 两个文件，直接按照注释填入你的内容即可。

为了解决多字重问题，使用思源黑体和思源宋体分别代替黑体（SimHei）和宋体（SimSun）。外观可能有些许差异。

由于体积问题，未包含以上两个字体，请自行下载解压，并移动字体文件到本文件夹中（推荐 OTC 版本，后缀为 .ttc；Typst 暂时不支持无极字重，请勿下载 Variable Font 版本），下载链接如下。

- [思源黑体下载链接](https://github.com/adobe-fonts/source-han-sans/releases/download/2.004R/SourceHanSansOTC.zip)
- [思源宋体下载链接](https://github.com/adobe-fonts/source-han-serif/releases/download/2.002R/03_SourceHanSerifOTC.zip)

## Q&A

**仍然无法识别源代码目录中的字体？** 可以利用 `typst fonts` 命令验证所需字体是否能被检测到。如没有，则在 `compile` 或者 `fonts` 子命令后加参数指定字体目录，如 `typst compile main.typ --font-path ./`。你也可以直接安装所需字体，在这台计算机上就无需加上述参数。
