:local sysName [/system identity get name]
:local sysVer [/system package get value-name=version [find name="routeros"]]
:local sysUptime [/system resource get uptime]
:local sysCPU [/system resource get cpu-load]
:local sysMem [/system resource get free-memory]
:local sysTotMem [/system resource get total-memory]

:local freeMemMB ($sysMem / 1048576)
:local totalMemMB ($sysTotMem / 1048576)
:local memString ("$freeMemMB MiB of $totalMemMB MiB")

:local payload "{\
\"embeds\":[{\
\"title\":\"Router Status Report\",\
\"color\":5814783,\
\"fields\":[\
{\"name\":\"Name\",\"value\":\"$sysName\",\"inline\":true},\
{\"name\":\"Version\",\"value\":\"$sysVer\",\"inline\":true},\
{\"name\":\"Uptime\",\"value\":\"$sysUptime\",\"inline\":true},\
{\"name\":\"CPU Load\",\"value\":\"$sysCPU%\",\"inline\":true},\
{\"name\":\"Free Memory\",\"value\":\"$memString\",\"inline\":false}\
],\
\"footer\":{\"text\":\"MikroTik Status Bot\"}\
}]\
}"

/tool fetch url="https://discord.com/api/webhooks/1380537006152613948/L5gnJTlW8FfWKv9THB5FR_A1J1H5fs3_NCFR6BpzteN97YVKgB8eTLvQwX76dxLaq1Cw" \
http-method=post \
http-header-field="Content-Type: application/json" \
http-data=$payload \
keep-result=no
