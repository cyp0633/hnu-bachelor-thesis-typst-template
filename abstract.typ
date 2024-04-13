#let chinese_abstract(title,keywords,content)=[
  // 狗屎目录的 dirty fix
  #text(size:0em)[
    #heading(level: 1)[摘 要]
  ]

  #v(1em)

  #align(center)[
    #text(font: "Source Han Sans",size:15pt)[#title]

    #v(1.3em)

    #text(font: "Source Han Sans",size: 16pt)[摘#h(2em)要]
  ]

  #show par: set block(spacing: 1.7em)

  #content

  #par(first-line-indent: 0em)[
    #text(font: "Source Han Sans",size: 14pt)[关键词：]
    #text(font: "Source Han Sans",size: 12pt)[#keywords]
  ]
]

#let english_abstract(title,keywords,content)=[
  // 狗屎目录的 dirty fix
  #text(size:0em)[
    #heading(level: 1)[Abstract]
  ]

  #v(1em)

  #align(center)[
    #text(font: "Times New Roman",size:15pt,weight: "bold")[#title]

    #v(1.3em)

    #text(font: "Times New Roman",size: 16pt,weight: "bold")[Abstract]
  ]

  #show par: set block(spacing: 1.7em)


  #content

  #par(first-line-indent: 0em)[
    #text(font: "Times New Roman",size: 14pt,weight: "bold")[Key Words：]
    #text(font: "Times New Roman",size: 12pt,weight: "bold")[#keywords]
  ]
]