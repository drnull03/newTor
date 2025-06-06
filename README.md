# newTor

This is a one-liner Bash script that I use a lot to change the Tor circuit for the Tor daemon  (for the CLI-savvy out there).

since some servers block certain Tor exit nodes this script might be useful.

---


## Installation

To install the newTor


```bash
chmod +x install.sh
./install.sh
```
---

## To Uninstall

```bash
chmod +x uninstall.sh
./uninstall.sh
```

---


## Running The script

Just type this command after installation:
```
newTor
```
you should see "Successfully got a new circuit" printed in green.
if you get "Some ERROR Accured" please make sure the tor daemon is running , you can check that using systemd as follows:

```
systemctl status tor
```
---

# Testing The new circuit

You can try this script with either:


```
torify curl ipinfo.io 
```
or 
```
torify curl ifconfig.me
```


Since both of them block some Tor exit nodes, I haven't figured out exactly which ones are blocked ,but you can keep changing the circuit until you see output other than Forbidden.
