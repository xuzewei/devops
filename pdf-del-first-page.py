from PyPDF2 import PdfFileWriter, PdfFileReader
import sys

def del_pdf_first_page(filename):
    # page numbering starts from 0
    pages_to_delete = [0] 
    infile = PdfFileReader(filename, 'rb')
    output = PdfFileWriter()
    for i in range(infile.getNumPages()):
        if i not in pages_to_delete:
            p = infile.getPage(i)
            output.addPage(p)
    #endfor
    with open(filename, 'wb') as f:
        output.write(f)
    #endwith
#enddef

if __name__ == "__main__":
    if len(sys.argv) == 1:
        print('You need give a filename.')
    elif len(sys.argv) == 2:
        filename = sys.argv[1]
        del_pdf_first_page(filename)
