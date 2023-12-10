# PowerShell Scripts Colletion

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

<br>

---

<br>

## Managers

In the directory [managers](https://github.com/MMartinsar/PowerShell-Scripts-Collection/tree/main/managers) you will find what I call "managers". This scripts are tools that lets you manage different aspects of something (users for example), instead of having multiple scripts to do simple actions. This tools will have all the options available in one executable and you will be making the changes just by following the directions. 

<br>

---

<br>

## Scripts

In the directory [scripts](https://github.com/MMartinsar/PowerShell-Scripts-Collection/tree/main/scripts) you will find all the scripts.

<br>