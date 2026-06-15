#import "/modules/color.typ": lightorange

#set page(numbering: none)

#show heading: set heading(outlined: false, bookmarked: false)

== 目录 <no-line>

#v(1em)

#show outline.entry.where(level: 1): it => {
    set text(fill: lightorange, weight: "bold")
    v(1em, weak: true)
    it
}

#show outline.entry.where(level: 2): it => {
    set text(weight: "bold")
    it
}

#columns(2, gutter: 4mm)[
    #outline(
        title: none,
        indent: 1.2em,
    )
]
