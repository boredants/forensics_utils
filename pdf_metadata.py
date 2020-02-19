from PyPDF2 import PdfFileReader

def pdf_info(file):
    pdfFile = PdfFileReader(file, 'rb')
    metaData = pdfFile.getDocumentInfo()

    for key in metaData:
        print("{0:13}: {1}".format(str(key)[1:], metaData[key]))


def main():

    myFile = input("Enter the path to a PDF file: ")

    pdf_info(myFile)


if __name__ == '__main__':
    main()
