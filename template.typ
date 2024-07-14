#import "frontpage.typ"
#import "authenticity.typ"
#import "abstract.typ"
#import "outlines.typ"
#import "@preview/i-figured:0.2.4"

// 页眉
#let page_header = [
  #set text(font: "Source Han Serif", size: 9pt)
  #align(center + bottom)[
    #pad(bottom: -6pt)[湖南大学本科生毕业论文（设计）]
  ]
  #line(length: 100%, stroke: 1pt)
  #pad(top: -9.6pt)[#line(length: 100%, stroke: 0.5pt)]
]


#let setup(
  // 封面内容
  title_zh: "",
  title_en: "",
  author: "",
  id:"",
  class:"",
  college:"",
  mentor:"",
  date: datetime.today(),
  // 中英文摘要
  abstract_zh: [],
  abstract_en: [],
  keywords_zh: "",
  keywords_en: "",
  body,
) = {
  // 正文字体：中文使用思源宋体代替宋体
  set text(lang: "zh", size: 11.8pt, font: ("Times New Roman", "Source Han Serif"))
  // 段落：1.5 倍行距，首行缩进 2 字符
  set par(first-line-indent: 2em, leading: 1.35em)

  // 表格：三线表，表内居中，改为默认行间距 from: https://st1020.com/write-thesis-with-markdown-part2/
  show table.cell.where(y: 0): set text(style: "normal", weight: "bold")
  set table(stroke: (_, y) => if y == 0 {
    (top: 1.5pt, bottom: 0.75pt)
  } else if y == 1 {
    (top: 0.75pt, bottom: 0pt)
  } else {
    (bottom: 1.5pt, top: 0pt)
  })
  show table: set par(leading: 0.65em)
  set table.cell(align: center + horizon)

  // 表题：表上五号黑体加粗 图题：图下五号宋体加粗
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.caption: it => {
    if it.kind == "i-figured-table" or it.kind == "table" {
      text(font: ("Times New Roman", "Source Han Sans"), size: 10.5pt, weight: "bold")[#it]
    } else if it.kind == "i-figured-image" or it.kind == "image" {
      text(font: ("Times New Roman", "Source Han Serif"), size: 10.5pt, weight: "bold")[#it]
    }
  }

  // 列表缩进 2 字符
  set enum(indent: 2em)

  // 封面，标题折两行
  let title1 = ""
  let title2 = ""
  // 解决中英文混排的折行问题
  {
    let title1_length = 0
    let title1_codepoints = 0
    // 中英文混排时，Typst 会自动在周围加共计 1 空格的空白字符。我们的做法是当英文切换为中文时，长度加一
    let last_zh = true
    for c in title_zh {
      if title1_length >= 27 {
        break
      }
      if c.match(regex("\p{script=Han}")) != none {
        // 中文字符，宽度 2
        title1_length += 2
        if not last_zh {
          title1_length += 1
        }
        last_zh = true
      } else {
        // 其他字符默认宽度 1
        title1_length += 1
        last_zh = false
      }
      title1 += c
      title1_codepoints += 1
    }
    title2 = title_zh.codepoints().slice(title1_codepoints).join()
  }
  frontpage.frontpage[
    #align(center, image("assets/hnu-text-logo.png", width: 8.01cm))

    #align(center)[
      #text(size: 26pt)[HUNAN UNIVERSITY]

      #text(size: 45pt)[本科生毕业论文(设计)]
      #v(2.5cm)
      #frontpage.basic_info(title1, title2, author, id, class, college, mentor)
      #v(0.5cm)
      #frontpage.date2(date: date)
    ]
  ]

  // 页码
  set page(numbering: "I", margin: (top: 30mm, bottom: 25mm, left: 30mm, right: 20mm), header: page_header)
  counter(page).update(1)

  // 原创性声明和版权使用授权书
  authenticity.toc
  authenticity.originality_statement()
  authenticity.copyright_authorization()
  pagebreak()

  // 中英文摘要
  abstract.chinese_abstract(title_zh, keywords_zh, abstract_zh)
  pagebreak()
  abstract.english_abstract(title_en, keywords_en, abstract_en)
  pagebreak()

  // 目录
  outlines.toc
  pagebreak()
  outlines.figures
  pagebreak()
  outlines.tables

  // 正文页码
  set page(numbering: "1")
  counter(page).update(1)

  // 标题编号
  set heading(numbering: "1.1.1.1 ")
  show heading: it => [ // 给编号和标题设置不同字体（有点逆天）
    #if it.level == 1 [ // 一级标题前空一页
      #pagebreak()
    ]
    #v(0.3cm)
    #set par(first-line-indent: 0em)
    #if it.numbering != none [
      #text(font: "Times New Roman")[#counter(heading).display()]
    ]
    #text(font: "Source Han Sans")[#it.body]
    #set par(first-line-indent: 2em)
    #v(0.8625em)
  ]
  show heading.where(depth: 1): set text(size: 16pt)
  show heading.where(depth: 2): set text(size: 12pt)
  show heading.where(depth: 3): set text(size: 12pt)
  show heading: i-figured.reset-counters
  show figure: i-figured.show-figure
  show math.equation: i-figured.show-equation

  body
}