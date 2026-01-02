// Skincare Knowledge Base Template
#let project(title: "", doc_id: "", body) = {
  // 1. 页面设置
  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2.5cm),
    // 页脚设置
    footer: [
      #set text(size: 8pt, fill: gray)
      #line(length: 100%, stroke: 0.5pt + gray)
      #grid(
        columns: (1fr, auto),
        [
          *Disclaimer:* This document is a personal study note and interpretation of scientific literature. 
          It may contain inaccuracies. This is NOT medical advice. Consult a doctor for skin concerns.
        ],
        [#context counter(page).display()]
      )
    ]
  )

  // 2. 文本与字体设置
  set text(font: "Segoe UI", size: 11pt)
  show heading: set text(fill: rgb("#2a52be"))

  // 3. 标题排版
  align(center)[
    #text(size: 20pt, weight: "bold")[#doc_id #title]
  ]
  
  v(1em)

  // 4. 正文内容
  body
}
