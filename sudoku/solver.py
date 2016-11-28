from z3 import *
import json
import sys

def solve(sudoku, restriction, compare, summation):
    X = [ [ Int("x_%s_%s" % (i+1, j+1)) for j in range(9)] for i in range(9)]

    # each cell contains a value in {1, ..., 9}
    cells_c  = [ And(1 <= X[i][j], X[i][j] <= 9) 
                 for i in range(9) for j in range(9) ]

    # each row contains a digit at most once
    rows_c   = [ Distinct(X[i]) for i in range(9) ]

    # each column contains a digit at most once
    cols_c   = [ Distinct([ X[i][j] for i in range(9) ]) 
                 for j in range(9) ]

    # each 3x3 square contains a digit at most once
    sq_c     = [ Distinct([ X[3*i0 + i][3*j0 + j] 
                            for i in range(3) for j in range(3) ]) 
                 for i0 in range(3) for j0 in range(3) ]

    instance_c = [ If(sudoku[i][j] == 0, 
                  True, 
                  X[i][j] == sudoku[i][j]) 
               for i in range(9) for j in range(9) ]

    sum_v = Sum([ X[rc['row']-1][rc['col']-1]  for rc in restriction])
    if compare == 'smaller':
        sum_c = sum_v < summation
    elif compare == 'bigger':
        sum_c = sum_v > summation

    s = Solver()
    s.add(cells_c + rows_c + cols_c + sq_c + instance_c + [sum_c])
    if not s.check():
        print "Failed."
        exit(1)
    model = s.model()
    solution = [[model.evaluate(X[i][j]).as_long() for j in range(9)] for i in range(9)]

    return json.dumps(solution, separators=(',',':'))

def solve_from_input(data):
    sudoku = []
    restriction = []
    compare = ''
    summation = 0
    for d in data:
        if '[' in d:
            sudoku.append(json.loads(d))
        elif 'sum' in d:
            if 'smaller' in d:
                compare = 'smaller'
            elif 'bigger' in d:
                compare = 'bigger'
            summation = int(d[-3:])
        elif ') : (' in d:
            row = int(d[-4:-3])
            col = int(d[-2:-1])
            restriction.append(dict(
                row = row,
                col = col,
            ))

    return solve(sudoku, restriction, compare, summation)
