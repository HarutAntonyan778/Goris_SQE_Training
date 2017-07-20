import commands
status, a = commands.getstatusoutput("hostname")
import commands
status, b = commands.getstatusoutput("lsb_release -a")
import commands
status, bb = commands.getstatusoutput("arch")
import commands
status, c = commands.getstatusoutput("uname -r")
import commands
status, d = commands.getstatusoutput("grep -c processor /proc/cpuinfo")
import commands
status, dd = commands.getstatusoutput("cat /proc/cpuinfo  | grep 'name'| uniq")
import commands
status, e = commands.getstatusoutput("free -m")
import commands
status, ff = commands.getstatusoutput("df --total")
import commands
status, g = commands.getstatusoutput("hostname -I")
import commands
status, h = commands.getstatusoutput("firefox -v")
import commands
status, i = commands.getstatusoutput("google-chrome --version")
for line in b.split("\n"):
        if "Distributor ID:" in line:
                list = line.split("\t")
                b1 =  list[1]
        if "Description:" in line:
                list = line.split("\t")
                b2 = list[1]
        if "Release:" in line:
                list = line.split("\t")
                b3 = list[1]
        if "Codename:" in line:
                list = line.split("\t")
                b4 = list[1]
for line in dd.split("\n"):
	if "model name	:" in line:
		list = line.split("\t")
		dd1 = list[1]
for line in e.split("\n"):
        if "Mem:" in line:
                list = line.split("     ")
                e1 = list[2]
        if "Mem:" in line:
                list = line.split("     ")
                e2 = list[6]
        if "Swap:" in line:
                list = line.split("    ")
                e3 = list[2]
for line in ff.split("\n"):
        if "total" in line:
                list = line.split(" ")
                ff1 = list[10]
        if "total" in line:
                list = line.split(" ")
                ff2 = list[11]
        if "total" in line:
                list = line.split(" ")
                ff3 = list[12]
        if "total" in line:
                list = line.split(" ")
                ff4 = list[14]
import json
data = [
{
	'PC Name': a
},
{
	'OS Information': [
	{
		'OS': [
		{
			'Distributor ID': b1 	
		},
		{
			'Description': b2
                },
		{		
			'Release': b3
                },
		{
			'Codename': b4
                }	
	]
	},
	{
		'OS Type': bb
	}
]
},
{
	'Kernel Version': c
},
{
	'CPU': [
	{
		'The Count of Processors': d
	},
	{
		'Model Name': dd1
	}
] 
},
{
	'RAM Info': [
	{
		'Total Size': e1
	},
	{
		'Buff/Cache': e2
	},
	{
		'Swap': e3
	}
]
},
{
	'HDD Info': [
	{
		'Total Size': ff1
	},
	{
		'Used Size': ff2
	},
	{
		'Available Size': ff3
	},
	{
		'Use%': ff4
	}
]
},
{
	'IP Address': g
},
{
	'FF Version': h
},
{
	'Chrome Version': i
}
]
json_str = json.dumps(data)
with open('PCinfo.json', 'w') as f:
     json.dump(data, f)    
