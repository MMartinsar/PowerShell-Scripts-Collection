# TestConnection_List

This script will test the connection to IPs given through a csv file. It will test each of them giving a message if the connection is stablished or not.

The format of the csv must be as follows:

```
ip
192.168.111.1
192.168.111.2
...
```

If the column "ip" is done as the example above, more columns can coexist as the example below.

```
ip,name
192.168.111.1,router
192.168.111.2,worker1
...,...
```

![TestConnection_List1](/info/images/TestConnection_List1.png)