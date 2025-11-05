# flashxvpn
api for flashxvpn android vpn service 
# Example
```nim
import asyncdispatch, flashxvpn, json

let data = waitFor get_servers()
let servers=data["data"]
for server in servers:
  try:
    echo server["area"].getStr() & " : " & server["countryName"].getStr() & " : " & server["city"].getStr()
    echo server["ip"].getStr()
  except Exception as e:
    discard
```

# Launch (your script)
```
nim c -d:ssl -r  your_app.nim
```
