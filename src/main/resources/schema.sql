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
    work_item_id INTEGER not null,
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

create table work_items
(
    work_item_id INTEGER not null, 
    work_order_id INTEGER not null,
    employee_id INTEGER not null,
    pet_id INTEGER not null, 
    product_id INTEGER not null, 
    quantity INTEGER not null DEFAULT 1, 
    description varchar(255),
    work_item_date DATE not null DEFAULT CURRENT_DATE,
    primary key (work_item_id)
);


alter table pet_breeds add constraint pet_breed_to_breeds foreign key (breed_id) references breeds;
alter table pet_breeds add constraint pet_breed_to_pets foreign key (pet_id) references pets;

alter table pet_colors add constraint pet_colors_to_colors foreign key (color_id) references colors;
alter table pet_colors add constraint pet_colors_to_pets foreign key (pet_id) references pets;

alter table pets add constraint pets_to_customers foreign key (customer_id) references customers;
alter table pets add constraint pets_to_pet_breed foreign key (pet_breed_id) references pet_breeds;
alter table pets add constraint pets_to_pet_color foreign key (pet_color_id) references pet_colors;
alter table pets add constraint pets_to_work_items foreign key (work_item_id) references work_items;

alter table employees add constraint employee_to_employee_type foreign key (employee_type_id) references employee_types;

alter table work_orders add constraint work_orders_to_customers foreign key (customer_id) references customers;
alter table work_orders add constraint work_orders_to_employees foreign key (employee_id) references employees;

alter table work_items add constraint work_items_to_work_order foreign key (work_order_id) references work_orders;
alter table work_items add constraint work_items_to_employee foreign key (employee_id) references employees;
alter table work_items add constraint work_items_to_pet foreign key (pet_id) references pets;
alter table work_items add constraint work_items_to_product foreign key (product_id) references products;
