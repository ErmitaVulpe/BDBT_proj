doc:
    texi2pdf --build=tidy raport.tex

clean:
    rm -fr *.t2d/ *.pdf
