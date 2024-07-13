// 封面，包含基本信息等

#let frontpage(content) = [
  #page(background: [
    #align(center + top)[
      #box(height: 5cm)
      #image("hnu-logo.png", height: 9.14cm)
    ]
  ])[#content]
]

#let tleft(content) = {
  set text(size: 14pt, font: "Source Han Sans", tracking: 4pt)
  grid.cell(align: bottom + right)[
    #content
    #h(0.05em)
  ]
}
#let tright(content) = [
  #set text(size: 15pt, font: ("Times New Roman", "Source Han Serif"))
  #grid.cell(align: bottom + left)[
    #content
  ]
  #v(0.2em)
]

#let basic_info(title_1, title_2, name, id, class, college, supervisor) = [
  #grid(columns: (6cm, 7.6cm),rows: 1.05cm,stroke: none,
    tleft[#text(size: 18pt, tracking: 0pt, weight: "bold")[论文（设计）题目:]], tright[#title_1],
    grid.hline(start: 1),
    tleft[],tright[#title_2],
    grid.hline(start: 1),
    tleft[学生姓名：], tright[#name],
    grid.hline(start: 1),
    tleft[学生学号：],tright[#id],
    grid.hline(start: 1),
    tleft[专业班级：],tright[#class],
    grid.hline(start: 1),
    tleft[学院名称：],tright[#college],
    grid.hline(start: 1),
    tleft[指导老师：],tright[#supervisor],
    grid.hline(start: 1),
  )
]

#let date(year, month, day) = [
  // 默认为当前日期
  #text(size: 14pt, font: ("Times New Roman", "Source Han Sans"))[
    #if year != "" and month != "" and day != "" [
      #year 年 #month 月 #day 日
    ] else [
      #datetime.today().display("[year] 年 [month] 月 [day] 日")
    ]
  ]
]

#let date2(date: datetime.today()) = [
  #text(size: 14pt, font: ("Times New Roman", "Source Han Sans"))[
    #date.display("[year] 年 [month] 月 [day] 日")
  ]
]