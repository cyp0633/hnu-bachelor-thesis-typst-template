// 封面，包含基本信息等

#let frontpage(content)=[
  #page(
    background: [
      #align(center+top)[
        #box(height: 5cm)
        #image("hnu-logo.png",height: 9.14cm)
      ]
    ]
  )[#content]
]

#let tleft(content) = {
  set text(size: 14pt,font: "Source Han Sans",tracking: 4pt)
  table.cell(align: bottom+right)[
    #content
  ]
}
#let tright(content) = {
  set text(size:15pt,font: ("Times New Roman","Source Han Serif"))
  table.cell(align: bottom+left)[
      #content
    ]
}

#let basic_info(title_1,title_2,name,id,class,college,supervisor)=[
    #table(columns: (6cm,7.5cm),rows:1.05cm,stroke: none,
      tleft[#text(size:18pt,tracking: 0pt,weight: "bold")[论文（设计）题目:]], tright[#title_1],
      table.hline(start: 1),
      tleft[],tright[#title_2],
      table.hline(start: 1),
      tleft[学生姓名：], tright[#name],
      table.hline(start:1),
      tleft[学生学号：],tright[#id],
      table.hline(start:1),
      tleft[专业班级：],tright[#class],
      table.hline(start:1),
      tleft[学院名称：],tright[#college],
      table.hline(start:1),
      tleft[指导老师：],tright[#supervisor],
      table.hline(start:1),
    )
]

#let date(year,month,day)=[
  #text(size:14pt,font:("Times New Roman","Source Han Sans"))[
    #year 年 #month 月 #day 日
  ]
]