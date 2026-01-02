// Skincare Knowledge Base Template (Bilingual Support)
#let project(title: "", doc_id: "", lang: "en", body) = {
  // 1. 语言映射
  let i18n = (
    en: (
      disclaimer: "Disclaimer: This document is a personal study note and interpretation of scientific literature. It may contain inaccuracies. This is NOT medical advice. Consult a doctor for skin concerns.",
      page: "Page",
    ),
    zh: (
      disclaimer: "免责声明：本文档为个人学习笔记及科学文献解读，可能存在错误。本文不构成医疗建议。如有皮肤问题，请咨询专业医生。权威数据请参考原始同行评审论文。",
      page: "页码",
    )
  ).at(lang)

  // 2. 页面设置
  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2.5cm),
    footer: [
      #set text(size: 8pt, fill: gray)
      #line(length: 100%, stroke: 0.5pt + gray)
      #grid(
        columns: (1fr, auto),
        [#i18n.disclaimer],
        [#context counter(page).display()]
      )
    ]
  )

  // 3. 文本与字体设置 (中文适配)
  // 英文字体在前，中文字体在后作为回退
  set text(
    font: ("Segoe UI", "Microsoft YaHei", "Noto Sans CJK SC"), 
    size: 11pt,
    lang: lang
  )
  
  show heading: set text(fill: rgb("#2a52be"))

  // 4. 标题排版
  align(center)[
    #text(size: 20pt, weight: "bold")[#doc_id #title]
  ]
  
  v(1em)

  // 5. 正文内容
  body
}
