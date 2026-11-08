set lists
set unstable

[script]
[cache(inputs = ["raport.tex", "raport.t2d/model.pdf"])]
doc: export-model
    texi2pdf --build=tidy raport.tex

[script]
[cache(inputs = ["model.drawio"])]
export-model:
    mkdir -p raport.t2d
    drawio -x model.drawio -o raport.t2d/model.pdf
    pdfcrop raport.t2d/model.pdf raport.t2d/model.pdf

clean:
    rm -fr *.t2d/ *.pdf .justcache
