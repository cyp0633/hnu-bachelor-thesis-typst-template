// 各种目录
#import "@preview/i-figured:0.2.4"

#let toc = [
  #set par(first-line-indent: 0em)
  #show outline.entry: it => [
    #text(size: 12pt)[#it]
  ]

  #show outline.entry.where(level: 1): it => [
    #text(font: ("Times New Roman", "Source Han Sans"), size: 12pt)[
      #it
    ]
  ]

  #align(center)[
    #text(font: "Source Han Sans", size: 16pt)[
      目#h(3.5em)录
    ]
  ]
  #v(-0.5cm)
  #outline(title: [], indent: auto)
]

#let figures = [
  #text(size: 0em)[
    #heading(level: 1)[插图索引]
  ]
  #set par(first-line-indent: 0em)
  #show outline.entry: it => [
    #text(size: 12pt)[#it]
  ]

  #align(center)[
    #text(font: "Source Han Sans", size: 16pt, weight: "regular")[
      插图索引
    ]
  ]
  #v(-0.5cm)

  #outline(title: [], target: figure.where(kind: i-figured._prefix + repr(image)))
]

#let tables = [
  #text(size: 0em)[
    #heading(level: 1)[附表索引]
  ]
  #set par(first-line-indent: 0em)
  #show outline.entry: it => [
    #text(size: 12pt)[#it]
  ]

  #align(center)[
    #text(font: "Source Han Sans", size: 16pt)[
      附表索引
    ]
  ]
  #v(-0.5cm)

  #outline(title: [], target: figure.where(kind: i-figured._prefix + repr(table)))
]