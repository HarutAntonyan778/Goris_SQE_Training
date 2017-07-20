import commands
status, a = commands.getstatusoutput("hostname")
import commands
status, b = commands.getstatusoutput("lsb_release -a")
import commands
status, c = commands.getstatusoutput("uname -a")
import commands
status, d = commands.getstatusoutput("cat /proc/cpuinfo")
import commands
status, e = commands.getstatusoutput("free -m")
import commands
status, f = commands.getstatusoutput("df -h")
import commands
status, g = commands.getstatusoutput("ip addr")
import commands
status, h = commands.getstatusoutput("firefox -v")
import commands
status, i = commands.getstatusoutput("google-chrome --version")
import json
data = [
{
   'PC Name': a
},
{
   'OS Version': b
},
{
   'More Complex Info': c
},
{
   'CPU': d
},
{
   'RAM Info': e
},
{
   'HDD Info': f
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
