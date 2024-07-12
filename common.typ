#let page_header = [
  #set text(font: "Source Han Serif", size: 9pt)
  #align(center + bottom)[
    #pad(bottom: -6pt)[湖南大学本科生毕业论文（设计）]
  ]
  #line(length: 100%, stroke: 1pt)
  #pad(top: -9.6pt)[#line(length: 100%, stroke: 0.5pt)]
]

#let setup(content) = [
  // 正文字体：中文使用思源宋体代替宋体
  #set text(lang: "zh", size: 11.8pt, font: ("Times New Roman", "Source Han Serif"))

  // 段落：1.5 倍行距，首行缩进 2 字符
  #set par(first-line-indent: 2em, leading: 1.35em)


  // 表格：三线表，表内居中，改为默认行间距
  #show table.cell.where(y: 0): set text(style: "normal", weight: "bold")
  #set table(stroke: (_, y) => if y == 0 {
    (top: 1.5pt, bottom: 0.75pt)
  } else if y == 1 {
    (top: 0.75pt, bottom: 0pt)
  } else {
    (bottom: 1.5pt, top: 0pt)
  })
  #show table: set par(leading: 0.65em)
  #set table.cell(align: center + horizon)
  #content
]