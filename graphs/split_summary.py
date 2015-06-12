#PROBLEM = "tsp"
PROBLEM = "knapsack"
INPUT_FILE = "./data/"+PROBLEM+"_results_summary.dat"
OUTPUT_DIR = "./data/results_summary/"+PROBLEM+"_"

with open(INPUT_FILE, "r") as input_file:
    for line in input_file:
        parts = line.split(" ")
        print(parts)
        with open(OUTPUT_DIR+parts[0].strip()+".dat", "w") as out_file:
            out_file.write("#")
            out_file.write(parts[1])
            out_file.write("\n")
            out_file.write(parts[0])
            out_file.write("    ")
            out_file.write(parts[2])