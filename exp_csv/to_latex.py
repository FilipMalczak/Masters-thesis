import sys

def trail_zeros(number):
    if "," in number:
        number = number.strip()
        to_add = 5 - len(number) + number.find(",")
        if to_add>0:
            number = number + "0"*to_add
    return number

def normalize_results(line):
    parts = line.split(";")
    return ";".join(parts[0:-2]+[ trail_zeros(parts[-2]), trail_zeros(parts[-1]).replace("-", "") ])

def change_line(line):
    return normalize_results(line).replace(";", " & ")+"\\\\ \\hline \n"

def main(i, o):
    with open(i, "r") as f:
        with open(o, "w") as g:
            for line in f:
                g.write(change_line(line))

if __name__=="__main__":
    main(sys.argv[1], sys.argv[2])