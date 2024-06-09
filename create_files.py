print("start process with create sudo parameters for alternative user")
import argparse
import time

time.sleep(3)
params = argparse.ArgumentParser()
params.add_argument("arg", nargs='*', default=['no args'])
args = params.parse_args()
user = args.arg[0]

with open(f"/etc/sudoers.d/{user}", "w") as file:
    file.write(f"{user} ALL=(ALL) NOPASSWD:ALL")
print("end process with create sudo parameters for alternative user")
time.sleep(3)

