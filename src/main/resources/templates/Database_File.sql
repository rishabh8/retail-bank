 create table customer(
    customer_id int primary key,
    ssn int unique,
    customer_name varchar(50) not null,
    customer_address varchar(150) not null,
    customer_age int(3) not null,
    city varchar(30) not null,
    state varchar(30) not null
);

alter table customer
modify customer_id int auto_increment;

alter table customer auto_increment = 1001;

create table account(
      account_id int primary key auto_increment,
      account_type varchar(30) not null check(account_type in("SAVING", "CURRENT")),
      account_balance int not null,
      account_creation_date date,
      account_creation_last_date date,
      duration int(30),
      customer_id int,
      foreign key (customer_id) references customer(customer_id));

 create table customerstatus(
      ssn_id int,
      customer_id int,
      foreign key (ssn_id) references customer(ssn),
      foreign key (customer_id) references customer(customer_id),
      status varchar(30) check(status in("ACTIVE", "INACTIVE")),
      message varchar(100),
      last_updated timestamp);

 create table accountstatus (
      customer_id int,
      account_id int,
      foreign key (customer_id) references customer(customer_id),
      foreign key (account_id) references account(account_id),
      account_type varchar(30) not null,
      status varchar(30) check(status in("ACTIVE", "INACTIVE")),
      message varchar(100),
      last_updated timestamp);

 create table userstore (
      username varchar(100) primary key,
      password varchar(100) not null,
      login_timestamp timestamp);

insert into userstore values("rishabh", "123456", current_timestamp());