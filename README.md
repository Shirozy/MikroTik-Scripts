# MikroTik-Scripts INDEX

---
## [SendUptimeToDiscord](https://github.com/Shirozy/MikroTik-Scripts/blob/main/SendUptimeToDiscord.rsc)
A basic script that will send your routers uptime to a Discord webhook. 

Example:
```rsc
Router uptime: 01:11:40
Router uptime: 01:11:45
Router uptime: 01:11:50
Router uptime: 01:11:55
Router uptime: 01:12:00
Router uptime: 01:12:05
```
You might want to use this in your scheduler to send every 5s, or something similar. 
![image](https://github.com/user-attachments/assets/9b0d181b-8d2c-4fe1-a75e-ea7c43be20af)
Warning: This only requires the following permissions: Read, Test.

---
## [InformationAnnouncer](https://github.com/Shirozy/MikroTik-Scripts/blob/main/InformationAnnouncer.rsc)
A script to send the router information to a Discord webhook in a neat Embed message. 

This will show the following information:
- Name
- Version
- Uptime
- CPU Load
- Free Memory

Example message:
![image](https://github.com/user-attachments/assets/05392dbb-e926-45d6-9864-59f70a0efcae)

This might look something like this in your scheduler:
![image](https://github.com/user-attachments/assets/d70cdd41-900f-46b0-af86-28db28d4bc47)
