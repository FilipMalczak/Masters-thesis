import sys

def change_line(line):
    return line.replace(";", " & ").replace("\n", "\\\\ \n")

def main(i, o):
    with open(i, "r") as f:
        with open(o, "w") as g:
            for line in f:
                g.write(change_line(line))

if __name__=="__main__":
    main(sys.argv[1], sys.argv[2])