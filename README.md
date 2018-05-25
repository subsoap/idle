# Idle
Toolkit useful for making incremental / idle games with Defold

## Installing

Library

```https://github.com/subsoap/idle/archive/master.zip```

Using

```local idle = require("idle.idle")```

### idle.display_number(num, type)

```num``` is the input number, ```type``` is the suffix kind
* type 1 = K,M,B,T,Qa,Qt ...
* type 2 = K,M,B,T,aa,bb ...
* type 3 = thousand, million, billion, trillion ...

Default is type 2

Examples

```
num = 1000000
print(idle.display_number(num)) --> 1 M
```

```
num = 1000000
print(idle.display_number(num, 3)) --> 1 million 
```