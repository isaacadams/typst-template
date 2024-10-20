# Welcome to your Typst Environment

This is a template repo for when you are working with typst.

## Getting Started

### 1. create a new repo based on this template

```bash
gh repo create my-typst-app --public --template isaacadams/typst-template
```

- `my-typst-app` &nbsp; replace with whatever name you want for your repo
- `--public` &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; `--private` or `--internal` are also valid choices

### 2. open the project using devcontainers (this can optionally be done via vscode's UI)

#### install devcontainers cli tool

```bash
npm install -g @devcontainers/cli
```

#### startup command:

```bash
devcontainer up --workspace-folder .
```

### 3. open a terminal, run `typst` and see the options

### 4. See example in `example.typ`

```typ
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

### 5. run the following to compile

```bash
typst compile example.typ
```

## Documentation

- typst docs: https://typst.app/docs/
- typst github: https://github.com/typst/typst
