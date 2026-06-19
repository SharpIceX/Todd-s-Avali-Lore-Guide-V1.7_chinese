// Avali 字体
#let avali(body) = {
    set text(font: "Avali Scratch")
    body
}

// Nerd Icon 字体
#let icon(body) = {
    set text(font: "Symbols Nerd Font")
    pdf.artifact(body)
}
