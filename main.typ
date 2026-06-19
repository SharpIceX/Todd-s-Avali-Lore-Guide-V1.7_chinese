#import "./modules/color.typ": darkbrown, orangebold

// 默认 Serif
#set text(
    lang: "zh",
    region: "cn",
    size: 10.5pt,
    hyphenate: true,
    cjk-latin-spacing: auto,
    font: "Source Han Serif SC",
)

// 数学
#show math.equation: set text(font: "Latin Modern Math")

// 标题 Sans
#show heading: set text(font: "Source Han Sans SC", weight: "bold")

// PDF 元数据
#set document(
    title: "Todd 的 Avali 综合指南——支持者版",
    author: ("Justin Eckelbarger", "锐冰"),
    keywords: ("Avali", "设定"),
    date: auto,
)

#set page(
    flipped: false,
    paper: "iso-b5",
    fill: rgb("C9C9C9"),
    margin: (
        top: 22mm,
        left: 20mm,
        right: 20mm,
        bottom: 23mm,
    ),
    header: context {
        grid(
            columns: (1fr, 1fr),
            align(left)[#text(size: 9pt)[1.7 支持者版]],
            align(right)[#text(size: 9pt)[20241221-#sys.inputs.at("git-hash", default: "dev")]],
        )
    },
    footer: context {
        align(right)[
            #stack(
                dir: ttb,
                line(length: 1.3cm, stroke: 0.5mm + orangebold),
                10pt,
                box(width: 1.3cm, align(center)[#text(size: 9pt, fill: black)[#counter(page).display()]]),
                10pt,
                line(length: 1.3cm, stroke: 1.3mm + orangebold),
            )
        ]
    },
)

#set par(
    justify: true,
    leading: 0.8em,
    spacing: 1.2em,
    first-line-indent: 2em,
)

#show heading.where(level: 1): it => {
    pagebreak(weak: true)
    []
}

#show heading.where(level: 2): it => {
    pagebreak(weak: true)
    let has-line = not it.has("label") or it.label != <no-line>

    set block(
        width: 100%,
        above: 1.5em,
        below: 0.8em,
        inset: (bottom: if has-line { 0.3em } else { 0pt }),
        stroke: (bottom: if has-line { 2pt + orangebold } else { none }),
    )
    set text(fill: orangebold)

    it
}

#show heading.where(level: 3): it => {
    set block(above: 1.2em, below: 0.6em)
    set text(fill: darkbrown)
    it
}

#include "./pages/cover/main.typ" // 封面页
#include "./pages/blank.typ" // 空白装饰页
#include "./pages/title.typ" // 内标题页
#include "./pages/preface.typ" // 前言页
#include "./pages/credits.typ" // 鸣谢页
#include "./pages/revision_summary.typ" // 内容修订页

#include "./pages/toc.typ" // 目录


#counter(page).update(1)
#include "./chapters/ICE_AND_FEATHER/main.typ"
