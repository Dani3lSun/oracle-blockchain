# Blockchain with Oracle and APEX

![](https://blogdanielhochleitner.files.wordpress.com/2017/10/blockchain_demo.gif)

Read more about it in this [blog post](https://blog.danielhochleitner.de/2017/10/10/blockchain-with-oracle-and-apex/)


## Installation

1. table
```
@src/01_blockchain_table.sql
```

2. sequence
```
@src/02_blockchain_sequence.sql
```

3. trigger
```
@src/03_blockchain_trigger.sql
```

4. package
```
grant execute on sys.dbms_crypto to blockchain_schema;
@src/blockchain_pkg.pks
@src/blockchain_pkg.pkb
```

OR

just import [apex/f115_blockchain_demo.sql](https://github.com/Dani3lSun/oracle-blockchain/blob/master/apex/f115_blockchain_demo.sql) into your APEX workspace. This will install all database objects into your parsing schema.


## License

![MIT](https://github.com/Dani3lSun/oracle-blockchain/blob/master/LICENSE)
