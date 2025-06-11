# MikroTik-Scripts INDEX

### Discord Intergration:
- [SendUptimeToDiscord](#senduptimetodiscord)
- [InformationAnnouncer](#informationannouncer)
- [Save backup to Discord](#save-backup-to-discord) - ( Requires external script outside of router )


---
## SendUptimeToDiscord
[View on GitHub](https://github.com/Shirozy/MikroTik-Scripts/blob/main/SendUptimeToDiscord.rsc)
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
## InformationAnnouncer
A script to send the router information to a Discord webhook in a neat Embed message. 

[View on GitHub](https://github.com/Shirozy/MikroTik-Scripts/blob/main/InformationAnnouncer.rsc)

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

---
## Save backup to Discord
[View on GitHub](https://github.com/Shirozy/MikroTik-Scripts/tree/main/backupToDiscord)
Does just as it says, this will create a backup of your WinBox configuration, and it will send that to your Discord Server. 

![image](https://github.com/user-attachments/assets/ab8a256e-99f0-456b-9220-97d8552ade61)

This script can be run on your system, or rather on a server PC connected to the network, and will allow you to schedule automatic backups to your Discord server. You can of course change this to go send to anywhere else, such as making it send to Telegram, or another platform. 

This might look something like this once setup:
![image](https://github.com/user-attachments/assets/ff92a62a-afcd-417c-8576-48aad4673a08)

