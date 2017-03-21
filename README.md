# Aiste
_ASH•tah_

A simple, barebones yoke for writing essays/reports. This was born of what *I* find myself doing every time I have a report to write for college. Simply clone the repo and get writing.

* Write your chapters as numbered [markdown](http://daringfireball.net/projects/markdown/syntax) files in `chapters`

```
chapters
├── 01_intro.md
├── 02_middle.md
└── 03_end.md
```

* Edit `meta/metadata.yaml` accordingly
* run `make`

To keep everything tidy, shove all your images in `img`.

See the Pandoc documentation for citation syntax. Put your citations in `meta/biblio.bib`. 
You can change the document type etc. by editing `meta/template.latex`.

This depends on `make`, `pandoc` and `pandoc-citeproc`.
