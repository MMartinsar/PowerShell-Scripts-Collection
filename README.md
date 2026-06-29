# PowerShell Scripts Colletion

> [!Warning]
> I am not responsible of the use and results given when the scripts are used.

<br>

## How to execute

By default, PowerShell execution policy is restricted, making it impossible to execute scripts without changing it. To stablish other policies, you will need to execute the following command:

```
Set-ExecutionPolicy <option>
```

The *option* should be substituted with the following policies: 
AllSigned | Bypass | Default | RemoteSigned | Undefined | Restricted | Unrestricted

To know how each policy works, check the following [official documentation](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.4).

> [!Note]
> I personally use the "Unrestricted" option to execute my scripts (surely not the most secure option) but I recommend to change it back to "Restricted" when you are finished to protect your system from the execution of malicious scripts.

```
Set-ExecutionPolicy Restricted
```

<br>

---

<br>

## Managers

In the directory [managers](https://github.com/MMartinsar/PowerShell-Scripts-Collection/tree/main/managers) you will find what I call "managers". This scripts are tools that lets you manage different aspects of something (users for example), instead of having multiple scripts to do simple actions. This tools will have all the options available in one executable and you will be making the changes just by following the directions.

| Name | Description |
| ------ | ----- |
| [ServiceManager](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/ServiceManager.md) | An interactive script to manage the services of the PC. |
| [UserGroupManager](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/UserGroupManager.md) | An interactive script to manage the users of the PC. |

<br>

---

<br>

## Scripts

In the directory [scripts](https://github.com/MMartinsar/PowerShell-Scripts-Collection/tree/main/scripts) you will find all the scripts.

| Name | Description |
| ------ | ----- |
| [ClearDnsClientCache](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/ClearDnsClientCache.md) | Clears DNS cache data from the client's PC. |
| [Configure IP](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/ConfigureIP.md) | Guides through the configuration of the IP of the PC. |
| [CreateUser](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/CreateUser.md) | Lets you create an user. |
| [CreateUser_List](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/CreateUser_List.md) | Creates all the users listed on a given CSV file. |
| [DeleteUser](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/DeleteUser.md) | Deletes the given user. |
| [EnableHyperV](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/EnableHyperV.md) | Enables HyperV on the PC. |
| [EnableSMB2](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/EnableSMB2.md) | Disables SMB1 protocol and enables SMB2. |
| [RemoveUser_List](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/RemoveUser_List.md) | Deletes all the users listed on a given CSV file. |
| [RockPaperScissors](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/RockPaperScissors.md) | Plays Rock, Paper & Scissors with you. |
| [ShutdownTemp](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/ShutdownTemp.md) | Executes a timer to shutdown the PC. Time can be programmed. |
| [ShutdownTemp_Cancel](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/ShutdownTemp_Cancel.md) | Cancels any programmed shutdown timer. |
| [TestConnection_List](https://github.com/MMartinsar/PowerShell-Scripts-Collection/blob/main/info/TestConnection_List.md) | Tests the connection between the PC and any other client in the network listed on a given CSV file. |

<br>
