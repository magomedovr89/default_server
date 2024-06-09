import argparse

import argparse

params = argparse.ArgumentParser()
params.add_argument("arg", nargs='*', default=['no args'])
args = params.parse_args()
user = args.arg[0]

with open(f"/etc/sudoers.d/{user}", "w") as file:
    file.write(f"{user} ALL=(ALL) NOPASSWD:ALL")

