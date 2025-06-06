:local uptime [/system resource get uptime]
:local content "Router uptime: $uptime"

/tool fetch \
  url="<DiscordWebhook>" \
  http-method=post \
  http-header-field="Content-Type: application/json" \
  http-data="{\"content\":\"$content\"}" \
  output=none
