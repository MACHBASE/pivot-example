# PIVOT Query On Sensor Data Example

This example shows how to use PIVOT query on TAG table and sensor data.

# Contents

* schema.sql   : schema file for tag table
* load.sh      : shell script file for loading tag data
* data.tgz     : CSV format file for tag data
* non-pivot.sql: query to select result data without PIVOT clause
* pivot.sql    : query to select result data with PIVOT clause

# How to use

1. Extract data file
```
tar -xvzf data.tgz
```

2. Create tag table
```
machsql -u SYS -p MANAGER -f schema.sql
```

3. Load data file
```
sh load.sh
```
If you don't use the default port number, P option in load.sh file must be modified properly.

4. Query
```
machsql -u SYS -p MANAGER -f non-pivot.sql
machsql -u SYS -p MANAGER -f pivot.sql
```
