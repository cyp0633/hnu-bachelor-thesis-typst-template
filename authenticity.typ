// 原创性声明和版权使用授权书

#let originality_statement()=[
  #align(center)[
    #text(font: "Source Han Sans",size: 18pt)[
      #par(leading: 2em)[
        #pad(top:1.2em)[
          湖 南 大 学#linebreak()
          毕业论文（设计）原创性声明
        ]
      ]
    ]
  ]
  #show par:set block(spacing: 1em)
  #par()[#text(size:0.5em)[#h(0.0em)]]

  #set par(leading: 1.2em,first-line-indent: 2em)
  #text(font:("Times New Roman","Source Han Serif"),size:11.7pt)[
    本人郑重声明：所呈交的论文（设计）是本人在导师的指导下独立进行研究所取得的研究成果。除了文中特别加以标注引用的内容外，本论文不包含任何其他个人或集体已经发表或撰写的成果作品。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律后果由本人承担。

    #box(height: 1em)

    学生签名： #h(11em)日期：20#h(1.5em) 年 #h(1.5em) 月 #h(1.5em) 日
  ]
]

#let copyright_authorization()=[
    #align(center)[
    #text(font: "Source Han Sans",size: 18pt)[
      #par(leading: 2em)[
        #pad(top:2em)[
          毕业论文（设计）版权使用授权书
        ]
      ]
    ]
  ]
  #show par:set block(spacing: 1em)
  #par()[#text(size:0.5em)[#h(0.0em)]]

  #set par(leading: 1.2em,first-line-indent: 2em)
  #text(font:("Times New Roman","Source Han Serif"),size:11.8pt)[
    本毕业论文（设计）作者完全了解学校有关保留、使用论文（设计）的规定，同意学校保留并向国家有关部门或机构送交论文（设计）的复印件和电子版，允许论文（设计）被查阅和借阅。本人授权湖南大学可以将本论文（设计）的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存和汇编本论文（设计）。
    
    本论文（设计）属于#linebreak()

    #h(8em)1、保#h(1em)密#box[#square(size: 0.7em)]，在\_\_\_\_\_\_\_\_年解密后适用本授权书。

    #h(8em)2、不保密#box[#square(size: 0.7em)]。

    #h(8em)（请在以上相应方框内打“√”）

    #box(height: 1em)

    #h(1em)学生签名： #h(10em)日期：20#h(1.5em) 年 #h(1.5em) 月 #h(1.5em) 日

    #h(1em)导师签名： #h(10em)日期：20#h(1.5em) 年 #h(1.5em) 月 #h(1.5em) 日
  ]
]

#let toc=[
  // 狗屎目录的 dirty fix
  #text(size:0em)[
    #heading(level: 1)[毕业论文（设计）原创性声明和毕业论文（设计）版权使用授权书]
  ]
]