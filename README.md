# Welcome to your Typst Environment

This is a template repo for when you are working with typst.

## Getting Started

1. open a terminal, run `typst` and see the options

2. Create a `main.typst` file.

```typst
#emph[Hello] \
#emoji.face \
#"hello".len()

#let (x, y) = (1, 2)
The coordinates are #x, #y.

#let (a, .., b) = (1, 2, 3, 4)
The first element is #a.
The last element is #b.

#let books = (
  Shakespeare: "Hamlet",
  Homer: "The Odyssey",
  Austen: "Persuasion",
)

#let (Austen,) = books
Austen wrote #Austen.

#let (Homer: h) = books
Homer wrote #h.

#let (Homer, ..other) = books
#for (author, title) in other [
  #author wrote #title.
]
```

3. run 

```bash
typst compile main.typst
```

## Documentation

- typst docs: https://typst.app/docs/
- typst github: https://github.com/typst/typst