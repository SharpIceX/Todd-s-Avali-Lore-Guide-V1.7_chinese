#import "./color.typ": lightorange
#import "./extra_fonts.typ": icon
#import "@preview/showybox:2.0.4": showybox

// 译者注，单行内容版本
#let TranslatorNote(content) = {
    text(fill: lightorange, weight: "bold")[（译者注：#content）]
}

// 译者注，多行内容版本
#let TranslatorNoteBox(body) = {
    showybox(
        body,
        inset: 3mm,
        sep: (thickness: 0pt),
        title: [
            #set text(weight: "bold", fill: white)
            #box(baseline: -0.1em, icon[\u{f05a}])
            #h(1mm)
            译者注
        ],
        frame: (
            radius: 2mm,
            thickness: 1pt,
            title-color: lightorange,
            border-color: lightorange,
            body-color: lightorange.lighten(90%),
        ),
    )
}
