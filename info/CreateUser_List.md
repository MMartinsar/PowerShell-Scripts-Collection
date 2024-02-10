# CreateUser_List


This script will create a set of users given a csv file.

The format of the csv must be as follows:

```
user,password
tom,1234
jerry,1234
...
```

If the column "user" and "password" are done as the example above, more columns can coexist as the example below.

```
user,password,description
tom,1234,a cat
jerry,1234,a mouse
...,...
```

Have in mind that only the users are going to be created with their passwords, no description or other details will be introduced.