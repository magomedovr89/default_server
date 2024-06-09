import argparse

import argparse

params = argparse.ArgumentParser()
params.add_argument("arg", nargs='*', default=['no args'])
args = params.parse_args()
for a in args.arg:
    print(a)