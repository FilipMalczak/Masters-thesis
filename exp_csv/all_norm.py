import os
from norm_csv import main as norm
from to_latex import main as latex

for problem in ["tsp", "knapsack"]:
    for config in [ "a", "b", "c", "d_top", "d_all" ]:
        original = os.path.join(".", "original", problem+"_"+config+".csv")
        normalized = os.path.join(".", "normalized", problem+"_"+config+"_norm.csv")
        latexed = os.path.join(".", "tex", problem+"_"+config+".tex")
        if os.path.exists(original):
            print("Doing", original)
            norm(original, normalized)
        else:
            print("No csv", original)