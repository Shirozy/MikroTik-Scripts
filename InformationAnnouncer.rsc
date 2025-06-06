:local sysName [/system identity get name]
:local sysVer [/system package get value-name=version [find name="routeros"]]
:local sysUptime [/system resource get uptime]
:local sysCPU [/system resource get cpu-load]
:local sysMem [/system resource get free-memory]
:local sysTotMem [/system resource get total-memory]

:local message ("Router: $sysName\\nVersion: $sysVer\\nUptime: $sysUptime\\nCPU Load: $sysCPU%\\nFree Mem: $sysMem of $sysTotMem")

/tool fetch url="<WEBHOOK URL>" \
    http-method=post \
    http-header-field="Content-Type: application/json" \
    http-data="{\"content\": \"$message\"}" \
    keep-result=no
