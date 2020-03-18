from email.parser import BytesParser, Parser
from email.policy import default
import os.path
import sys


def parse_headers(file):

    outFile = file + "_HEADERS"
  
    with open(outFile, 'w') as g:
        with open(file, 'rb') as f:
            headers = BytesParser(policy=default).parse(f)
            for h in headers:
                print("{0:50} -----> {1}\n".format(h, headers[h]), file=g)
                print("-" * 100, file=g)


def main():

    emlFile = input("Enter an eml file to parse: ")

    if os.path.isfile(emlFile):
        parse_headers(emlFile)
    else:
        print("The file does not exist.  Exiting...")
        sys.exit(1)        


if __name__ == '__main__':
    main()
