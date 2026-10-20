-- tabela de regiões
create TABLE if not exists regions(
region_id int generated always as identity primary key,
region_name varchar(100) not null,
state_code char(2) not null
);

-- tabela de clientes
create table if not exists customers(
customer_id int generated always as identity primary key,
customer_name varchar(150) not null,
email varchar(150),
region_id int not null,
constraint fk_customers_regions
foreign key (region_id)
references regions(region_id)
);