# Masters-thesis
Repozytorium przeznaczone na kod LaTeX mojej pracy magisterskiej, wraz z zasobami.

## Renderowanie

Korzystam z TeXstudio, z backendem XeLaTeX.

Aby renderować dokument bez żadnego GUI/IDE, wykonaj:

    xelatex -synctex=1 -interaction=nonstopmode FM_mgr.tex

Tyle razy, aż wszystkie referencje, etc zostaną uzupełnione.
