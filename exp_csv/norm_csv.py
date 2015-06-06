import sys

def remove_not_needed(part):
    return part.replace(", true", "").replace(", false", "").replace("(", "").replace(")", "")

def norm_params(params):
    return params.replace(",", ";").replace(".", ",")

def norm_line(line):
    parts = remove_not_needed(line).split(";")
    assert len(parts)==3
    return ";".join([norm_params(parts[0]), parts[1], parts[2]])

def main(i, o):
    with open(i, "r") as f:
        with open(o, "w") as g:
            for line in f:
                if line.strip():
                    g.write(norm_line(line))

if __name__=="__main__":
    main(sys.argv[1], sys.argv[2])