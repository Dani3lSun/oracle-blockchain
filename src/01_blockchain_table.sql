-- Create table
create table BLOCKCHAIN
(
  bc_index         number not null,
  bc_timestamp     timestamp with time zone not null,
  bc_data          clob not null,
  bc_previous_hash varchar2(500) not null,
  bc_hash          varchar2(500) not null
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table BLOCKCHAIN
  add constraint BLOCKCHAIN_PK primary key (BC_INDEX);
-- Create/Recreate indexes 
create index BLOCKCHAIN_TIMESTAMP_I on BLOCKCHAIN (BC_TIMESTAMP);
