print("start process editing network configuration")
import argparse
import time

time.sleep(3)
params = argparse.ArgumentParser()
params.add_argument("arg", nargs='*', default=['no args'])
args = params.parse_args()
user = args.arg[0]

network_config = f"""source /etc/network/interfaces.d/*

                    auto lo
                    iface lo inet loopback
                    
                    # The primary network interface
                    allow-hotplug ens18
                    iface ens18 inet static
                            address 192.168.88.212
                            netmask 255.255.255.0
                            gateway 192.168.88.1
                            dns-nameservers 192.168.88.1 8.8.8.8"""

with open(f"/etc/network/interfaces", "w") as file:
    file.write(network_config)

print("end process")
time.sleep(3)