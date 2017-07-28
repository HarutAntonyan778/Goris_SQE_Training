	#OS version
import subprocess
a = subprocess.check_output('uname -a', shell=True)
OS = a
print "  " + a


	#RAM	
import commands
status, e = commands.getstatusoutput("free -m")
for line in e.split("\n"):
        if "Mem:" in line:
                list = line.split("    ")
                print list[2]
		RAM = e


	#HDD
import commands
status, d = commands.getstatusoutput("df -h")
for line in d.split("\n"):
        if "/dev/sda4" in line:
                list = line.split("   ")
		HDD = d
                print " " +  list[2]

	 #Bit system
import subprocess
c = subprocess.check_output('uname -m', shell=True)
Bit = c
print "  " + c

	#Firefox Version
import subprocess
f = subprocess.check_output('firefox -v', shell=True)
Firefox = f
print "  " + f



	#CPU
import commands
status, p = commands.getstatusoutput("cat /proc/cpuinfo")
isPrinted = False
for line in p.split("\n"):
        if "model name	:" in line:
		if isPrinted == False:
			isPrinted = True
               		list = line.split("             ")
			CPU = line
                	print "  "  + line
	
import json
data = {
'OS' : a,
'RAM' : e,
'HDD' : d,
'BIT System' : c,
'Firefox' : f,
'CPU' : line,
}
json_str = json.dumps(data)
with open('data.json', 'w') as f:
     json.dump(data, f)

