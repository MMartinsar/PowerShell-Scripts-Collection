# ConfigureIP

This scripts lets you configure your network adapter as dynamic or static.

The script will ask you which configuration are you willing to make. The response must be a number from 1 to 3 being 3 "exit the program".

- 1 - Dynamic configuration.

The script will ask you to enter the name of the adapter you want to configure after showing you the adapters you have available. After introducing the name, the script will delete any configuration and any IP route from the IP routing table, then the script will modify your adapter to accept dhcp automatically. When the configuration finishes, the results will be shown but, as the DHCP is slower than the execution of the command, it will show that your adapter does not have any configuration. Don't worry about that as the adapter will soon receive the configuration from the DHCP server if there is one. Try checking with the following command after waiting a bit:

```
gip -InterfaceAlias <interfaceName>
```

- 2 - Static configuration.

The script will ask you to enter the name of the adapter you want to configure after showing you the adapters you have available. After introducing the name, the script will delete any configuration and any IP route from the IP routing table, then it will ask you to introduce the configuration desired. This configuration includes a new IP, netmask, gateway and two DNS addresses. After this, your adapter will be configured with an static configuration and the result will be shown.

> [!Note]
> Sometimes, when you configure the adapter as dynamic after having it static, an error will appear. This error will warn you about the non-existance of any IP route. Just ignore this error as no IP route is expected to exist after having it static. The reason of trying to remove this routes is that, if there are any, the configuration can be done cleanly.
![ConfigureIP4](/info/images/ConfigureIP4.png)