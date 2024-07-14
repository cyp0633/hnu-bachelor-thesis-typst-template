# 湖南大学本科毕业论文（大理） Typst 模板

Typst 是一种排版体系，可以理解为语法更简单的 LaTeX，确实能够简化许多 Word 的麻烦，包括但不限于页面编号、图片及其标号、伪代码排版等。

本模板力求与教务处提供的模板相似，但对比时仍能发现排版差别。作者已成功使用该模板，于信息科学与工程学院毕业，但不对任何可用性作保证，请使用者后果自负。

[样式预览](./assets/example.pdf)

## 使用方法

一般来说仅需要修改 `example.typ` 中的文章内容，以及 `example.bib` 中的参考文献（BibLaTeX 格式），其他 `.typ` 文件皆为模板。

为了解决多字重（粗细）问题，使用思源黑体和思源宋体分别代替部分黑体（SimHei）和宋体（SimSun）。外观可能有些许差异。由于体积问题，未包含以上两个字体，请自行下载解压，并移动字体文件到本文件夹中（推荐 OTC 版本，后缀为 .ttc；Typst 暂时不支持无极字重，请勿下载 Variable Font 版本），下载链接如下。

- [思源黑体下载链接](https://github.com/adobe-fonts/source-han-sans/releases/download/2.004R/SourceHanSansOTC.zip)
- [思源宋体下载链接](https://github.com/adobe-fonts/source-han-serif/releases/download/2.002R/03_SourceHanSerifOTC.zip)

部分 Linux 系统可能未包含 Times New Roman，Arch Linux 可安装 AUR `ttf-times-new-roman`。

## Q&A

**仍然无法识别源代码目录中的字体？** 可以利用 `typst fonts` 命令验证所需字体是否能被检测到。如没有，则在 `compile` 或者 `fonts` 子命令后加参数指定字体目录，如 `typst compile <your-target>.typ --font-path ./`。你也可以直接安装所需字体，在这台计算机上就无需加上述参数。

**如何添加伪代码/LaTeX 公式/……？** 伪代码可以使用 [lovelace](https://typst.app/universe/package/lovelace)，LaTeX 公式兼容可以使用 [mitex](https://typst.app/universe/package/mitex)。看来不止我一个人觉得 Typst 公式难用？

**你这写得太烂了，我没法用！** 提 Issue 或者 PR，或者看一看 [别人的模板](https://github.com/Mufanc/hnuthss-template)

## 项目文件结构

```plaintext
├── abstract.typ - 中英文摘要
├── assets - 资源文件
│   ├── example.pdf - 模板效果示例
│   ├── ezgif-7-98e2f7ecdc.jpg - example.typ 的插图
│   ├── hnu-logo.png - 封面所需图片
│   └── hnu-text-logo.png - 封面所需图片
├── authenticity.typ - 原创性声明和版权使用授权书
├── bilingual-biblography.typ - 双语参考文献规则
├── example.bib - 示例 BibLaTeX 文献表
├── example.typ - 模板效果示例
├── frontpage.typ - 封面格式
├── gbt7714-numeric.csl - 参考文献格式（暂无用处）
├── readme.md - 本文件
└── template.typ - 调用上述组件合成的总模板
```

## 鸣谢

- Typst 开发者
- [`i-figured`](https://github.com/RubixDev/typst-i-figured) 插件作者：二级图表/公式序号
- @st1020 ：三线表代码
- @OrangeX4 @csimide ：双语参考文献规则
- 其他非必需但很有用的插件作者，各路 Issue 区大佬等
