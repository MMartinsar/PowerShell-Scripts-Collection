# PowerShell Scripts Colletion

A collection of PowerShell scripts with different functions.

> [!Warning]
> I am not responsible of the use and results given when the scripts are used.

<br>

## How to execute

By default, PowerShell execution policy is restricted, making it impossible to execute scripts without changing it. To stablish other policies, you will need to execute the following command:

```
Set-ExecutionPolicy <option>
```

The <option> should be substituted with the following policies: 
AllSigned | Bypass | Default | RemoteSigned | Undefined | Restricted | Unrestricted

To know how each policy works, check the following [official documentation](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.4).

> [!Note]
> I personally use the "Unrestricted" option to execute my scripts (surely not the most secure option) but I recommend to change it back to "Restricted" when you are finished to protect your system from the execution of malicious scripts.

```
Set-ExecutionPolicy Restricted
```

---

<br>


## Service_Manager

Service_Manager is a script that lets you manage Windows services without needing to learn every command. Just by following the questions that will guide you through the possibilities of this script, you can change things as the status of the service or even the display name.

It has many options to manage our services:

- ### Status

Let's us choose a service and change it's status to one of the following:
Start | Stop | Resume | Suspend | Restart | Remove

> [!Note]
> The stop option will also stop the services that the one we are managing is dependant of.

---

## Rock_Paper_Scissors.

This script is a simple Rock, Paper, Scissors game to play against your computer.

---

<br>