create table breeds 
(
    breed_id INTEGER not null, 
    name varchar(255), 
    origin varchar(255), 
    section varchar(255), 
    primary key (breed_id)
);

create table colors 
(
    color_id INTEGER not null,
    name varchar(255), 
    primary key (color_id)
);

create table customers 
(
    customer_id INTEGER not null, 
    street_address varchar(50), 
    city varchar(50), 
    email varchar(50), 
    phone varchar(10),
    first_name varchar(50) not null, 
    last_name varchar(50) not null, 
    state varchar(5), 
    zip INTEGER, 
    primary key (customer_id)
);

create table employees
(
    employee_id INTEGER not null, 
    first_name varchar(255) not null,
    last_name varchar(50) not null,
    email varchar(50),
    phone varchar(10),
    employee_type_id INTEGER not null,
    manager_id INTEGER not null,
    primary key (employee_id)
);

create table employee_types
(
    employee_type_id INTEGER not null,
    name varchar(50) not null,
    primary key (employee_type_id)
);

create table pets 
(
    pet_id INTEGER not null, 
    age INTEGER, 
    fixed boolean, 
    name varchar(255), 
    sex varchar(255), 
    weight INTEGER, 
    customer_id INTEGER not null, 
    pet_breed_id INTEGER not null,
    pet_color_id INTEGER not null,
    primary key (pet_id)
);

create table pet_breeds
(
    pet_breed_id INTEGER not null, 
    pet_id INTEGER not null,
    breed_id INTEGER not null,
    primary key (pet_breed_id)
);

create table pet_colors 
(
    pet_color_id INTEGER not null,
    color_id INTEGER not null,
    pet_id INTEGER not null, 
    primary key (pet_color_id)
);

create table products 
(
    product_id INTEGER not null, 
    name varchar(50) not null, 
    description varchar(255),
    price money,
    primary key (product_id)
);

create table work_orders
(
    work_order_id INTEGER not null, 
    customer_id INTEGER not null, 
    employee_id INTEGER not null, 
    total_price money not null, 
    transaction_date DATE not null DEFAULT CURRENT_DATE,
    primary key (work_order_id)
);

alter table pet_breeds add constraint pet_breed_to_breeds foreign key (breed_id) references breeds;

alter table pet_breeds add constraint pet_breed_to_pets foreign key (pet_id) references pets;

alter table pet_colors add constraint pet_colors_to_colors foreign key (color_id) references colors;

alter table pet_colors add constraint pet_colors_to_pets foreign key (pet_id) references pets;

alter table pets add constraint pets_to_customers foreign key (customer_id) references customers;

alter table pets add constraint pets_to_pet_breed foreign (pet_breed_id) references pet_breeds;