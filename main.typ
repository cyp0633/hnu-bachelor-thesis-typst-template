#import "common.typ"
#import "frontpage.typ"
#import "authenticity.typ"
#import "abstract.typ"
#import "outlines.typ"
#import "@preview/i-figured:0.2.4"

#set text(lang: "zh",size: 11.8pt,font: ("Times New Roman","Source Han Serif"))

// 封面

#frontpage.frontpage[
  #align(center,image("hnu-text-logo.png",width: 8.01cm))

  #align(center)[
    #text(size:26pt)[HUNAN UNIVERSITY]
    
    #text(size: 45pt)[本科生毕业论文(设计)]

    #box(height: 2.5cm)

    #frontpage.basic_info("基于地下通道的施工噪音测量","与分析系统","张三","202026114514","软件2045","信息科学与工程学院","沼跃鱼")

    #box(height: 0.5cm)

    #frontpage.date("","","")
  ]
]

// 原创性声明和版权使用授权书

#set par(first-line-indent: 2em,leading: 1.725em)

#set page(header: common.page_header)

#set page(numbering: "I")

#counter(page).update(1)

#authenticity.toc

#authenticity.originality_statement()

#authenticity.copyright_authorization()

#pagebreak()

// 中文摘要

#abstract.chinese_abstract("基于地下通道的施工噪音测量与分析系统","aaa啊啊啊")[
  这是内容
]
#pagebreak()

// 英文摘要

#abstract.english_abstract("Construction noise measurement and analysis system based on underground passages","keywords")[
  This is content
]

#pagebreak()

// 目录

#outlines.toc

#pagebreak()

// 插图索引

#outlines.figures

#pagebreak()

// 附表索引

#outlines.tables

#pagebreak()

// 正文

#set page(numbering: "1")

#counter(page).update(1)

#set heading(numbering: "1.1.1.1 ")

#show heading:it=>[ // 给编号和标题设置不同字体（有点逆天）
  #v(0.3cm)
  #set par(first-line-indent: 0em)
  #if it.numbering != none [
    #text(font:"Times New Roman")[#counter(heading).display()]
  ]
  #text(font: "Source Han Sans")[#it.body]
  #set par(first-line-indent: 2em)
  #v(0.8625em)
]

#show heading.where(depth: 1):set text(size: 16pt)
#show heading.where(depth: 2):set text(size: 12pt)
#show heading.where(depth: 3):set text(size: 12pt)

#show heading: i-figured.reset-counters
#show figure:i-figured.show-figure

// 表题：表上五号黑体加粗 图题：图下五号宋体加粗
#show figure.where(kind: table): set figure.caption(position: top)
#show figure.caption:it=>{
  if it.kind == "i-figured-table" or it.kind == "table" {
    text(font: ("Times New Roman","Source Han Sans"),size: 10.5pt,weight: "bold")[#it]
  } else if it.kind == "i-figured-image" or it.kind == "image"{
    text(font:("Times New Roman","Source Han Serif"),size: 10.5pt,weight: "bold")[#it]
  }
}
#show figure.where(kind:image):set text(font:("Times New Roman","Source Han Serif"),size: 10.5pt,weight: "bold")

// 三线表 from: https://st1020.com/write-thesis-with-markdown-part2/
#show table.cell.where(y: 0): set text(style: "normal", weight: "bold")
#set table(
  stroke: (_, y) => if y == 0 {
    (top: 1.5pt, bottom: 0.75pt)
  } else if y == 1 {
    (top: 0.75pt, bottom: 0pt)
  } else {
    (bottom: 1.5pt, top: 0pt)
  }
)
#show table: set par(leading: 0.65em)
#set table.cell(align: center+horizon)

// 正文从这里开始

= I级叶/盘转子错频方案的对比分析

在叶轮机械领域，对一个实际的叶盘转子，错频是指由于单个叶片之间因几何上或结构上的不同而造成的其在固有频率上的差异[2]。……

……

== 多自由度系统的强迫响应分析

由前面的分析可知，响应分析在数学上是一个具有38个自由度的二阶线性微分方程的数值积分问题[3, 6-9]。……

===  动态响应的计算方法

1. 系统的运动方程

多自由度系统运动微分方程的一般形式为：……

(1)……

(2)……

2.微分方程组的数值积分

一阶常系数微分方程组的初值问题可表述为：……



= 绪论

苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。苟利国家生死以，岂因祸福避趋之。

== 课题背景及目的

在叶轮机械领域，对一个实际的叶盘转子，错频是指由于单个叶片之间因几何上或结构上的不同而造成的其在固有频率上的差异[2]。……

=== AAA

#lorem(300)

#figure(caption: "湖南大专")[
  #image("hnu-logo.png",width: 30%)
]

#lorem(300)

= B

#lorem(300)

#figure(caption: "示例图表")[
  #table(columns: 2,rows: 3)[
  ]
]

#lorem(200)

#bibliography("example.bib",style:"gb-7714-2015-numeric")
