import sys
import os

if len(sys.argv) != 2:
    sys.exit(1)

input_file = sys.argv[1]

if not os.path.isfile(input_file) or not os.access(input_file, os.R_OK):
    sys.exit(1)

try:
    with open(input_file, 'r') as f:
        lines = f.readlines()
except:
    sys.exit(1)



filtered_lines = []

for line in lines:
    words = line.split()
    if 'pineapple' not in words:
        filtered_lines.append(line)


with open('out.txt', 'w') as f:
    f.writelines(filtered_lines)
