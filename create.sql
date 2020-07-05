create sequence hibernate_sequence start 1 increment 1
create table breeds (breed_id int8 not null, name varchar(255), origin varchar(255), section varchar(255), primary key (breed_id))
create table colors (color_id int8 not null, name varchar(255), primary key (color_id))
create table customers (customer_id int8 not null, street_address varchar(255), city varchar(255), email varchar(255), first_name varchar(255) not null, last_name varchar(255) not null, phone varchar(255), state varchar(255), zip int4, primary key (customer_id))
create table employee_types (employee_type_id int8 not null, name varchar(255), primary key (employee_type_id))
create table employees (employee_id int8 not null, email varchar(255), first_name varchar(255), last_name varchar(255), phone varchar(255), employee_type_id int8 not null, supervisor_employee_id int8, primary key (employee_id))
create table pet_breeds (pet_breed_id int8 not null, breed_id int8 not null, pet_id int8 not null, primary key (pet_breed_id))
create table pet_colors (pet_color_id int8 not null, color_id int8 not null, pet_id int8 not null, primary key (pet_color_id))
create table pets (pet_id int8 not null, age int4, fixed boolean, name varchar(255), sex varchar(255), weight int4, customer_id int8 not null, primary key (pet_id))
create table products (product_id int8 not null, description varchar(255), name varchar(255), price numeric(19, 2), primary key (product_id))
create table work_items (work_item_id int8 not null, description varchar(255), quantity int4, work_item_date timestamp, employee_id int8, pet_id int8, product_id int8, work_order_id int8, primary key (work_item_id))
create table work_orders (work_order_id int8 not null, total numeric(19, 2), transaction_date timestamp, employee_id int8 not null, customer_id int8 not null, primary key (work_order_id))
alter table employees add constraint FK3ieleopldiw0royercatvp00i foreign key (employee_type_id) references employee_types
alter table employees add constraint FKepohgocktmdfqv1l3f9r9lorn foreign key (supervisor_employee_id) references employees
alter table pet_breeds add constraint FKbkjx1jsybkownm9qyhh6h4dem foreign key (breed_id) references breeds
alter table pet_breeds add constraint FKiybewfv9pk7usixrsr03lhepl foreign key (pet_id) references pets
alter table pet_colors add constraint FKffe07qs40e35b9n1b2ig9c8r5 foreign key (color_id) references colors
alter table pet_colors add constraint FKole4asu33n8i6x3xb1a5fyb14 foreign key (pet_id) references pets
alter table pets add constraint FKhili9xtogoo1wl2rx11t95u2e foreign key (customer_id) references customers
alter table work_items add constraint FKm6ep47rclg4x87hnc1d4217np foreign key (employee_id) references employees
alter table work_items add constraint FKim8m5ujjh4aorubvawwi4iaqt foreign key (pet_id) references pets
alter table work_items add constraint FKpxvtho6o1mceabwkvw493o9x9 foreign key (product_id) references products
alter table work_items add constraint FKggj908733lq64g1xgv617igl7 foreign key (work_order_id) references work_orders
alter table work_orders add constraint FKr1v7lpbqwxsxxg4nwevysi8ru foreign key (employee_id) references employees
alter table work_orders add constraint FK9bkpbdto93imqm7u6yg0r2kqw foreign key (customer_id) references customers
create sequence hibernate_sequence start 1 increment 1
create table breeds (breed_id int8 not null, name varchar(255), origin varchar(255), section varchar(255), primary key (breed_id))
create table colors (color_id int8 not null, name varchar(255), primary key (color_id))
create table customers (customer_id int8 not null, street_address varchar(255), city varchar(255), email varchar(255), first_name varchar(255) not null, last_name varchar(255) not null, phone varchar(255), state varchar(255), zip int4, primary key (customer_id))
create table employee_types (employee_type_id int8 not null, name varchar(255), primary key (employee_type_id))
create table employees (employee_id int8 not null, email varchar(255), first_name varchar(255), last_name varchar(255), phone varchar(255), employee_type_id int8 not null, supervisor_employee_id int8, primary key (employee_id))
create table pet_breeds (pet_breed_id int8 not null, breed_id int8 not null, pet_id int8 not null, primary key (pet_breed_id))
create table pet_colors (pet_color_id int8 not null, color_id int8 not null, pet_id int8 not null, primary key (pet_color_id))
create table pets (pet_id int8 not null, age int4, fixed boolean, name varchar(255), sex varchar(255), weight int4, customer_id int8 not null, primary key (pet_id))
create table products (product_id int8 not null, description varchar(255), name varchar(255), price numeric(19, 2), primary key (product_id))
create table work_items (work_item_id int8 not null, description varchar(255), quantity int4, work_item_date timestamp, employee_id int8, pet_id int8, product_id int8, work_order_id int8, primary key (work_item_id))
create table work_orders (work_order_id int8 not null, total numeric(19, 2), transaction_date timestamp, employee_id int8 not null, customer_id int8 not null, primary key (work_order_id))
alter table employees add constraint FK3ieleopldiw0royercatvp00i foreign key (employee_type_id) references employee_types
alter table employees add constraint FKepohgocktmdfqv1l3f9r9lorn foreign key (supervisor_employee_id) references employees
alter table pet_breeds add constraint FKbkjx1jsybkownm9qyhh6h4dem foreign key (breed_id) references breeds
alter table pet_breeds add constraint FKiybewfv9pk7usixrsr03lhepl foreign key (pet_id) references pets
alter table pet_colors add constraint FKffe07qs40e35b9n1b2ig9c8r5 foreign key (color_id) references colors
alter table pet_colors add constraint FKole4asu33n8i6x3xb1a5fyb14 foreign key (pet_id) references pets
alter table pets add constraint FKhili9xtogoo1wl2rx11t95u2e foreign key (customer_id) references customers
alter table work_items add constraint FKm6ep47rclg4x87hnc1d4217np foreign key (employee_id) references employees
alter table work_items add constraint FKim8m5ujjh4aorubvawwi4iaqt foreign key (pet_id) references pets
alter table work_items add constraint FKpxvtho6o1mceabwkvw493o9x9 foreign key (product_id) references products
alter table work_items add constraint FKggj908733lq64g1xgv617igl7 foreign key (work_order_id) references work_orders
alter table work_orders add constraint FKr1v7lpbqwxsxxg4nwevysi8ru foreign key (employee_id) references employees
alter table work_orders add constraint FK9bkpbdto93imqm7u6yg0r2kqw foreign key (customer_id) references customers
create sequence hibernate_sequence start 1 increment 1
create table breeds (breed_id int8 not null, name varchar(255), origin varchar(255), section varchar(255), primary key (breed_id))
create table colors (color_id int8 not null, name varchar(255), primary key (color_id))
create table customers (customer_id int8 not null, street_address varchar(255), city varchar(255), email varchar(255), first_name varchar(255) not null, last_name varchar(255) not null, phone varchar(255), state varchar(255), zip int4, primary key (customer_id))
create table employee_types (employee_type_id int8 not null, name varchar(255), primary key (employee_type_id))
create table employees (employee_id int8 not null, email varchar(255), first_name varchar(255), last_name varchar(255), phone varchar(255), employee_type_id int8 not null, supervisor_employee_id int8, primary key (employee_id))
create table pet_breeds (pet_breed_id int8 not null, breed_id int8 not null, pet_id int8 not null, primary key (pet_breed_id))
create table pet_colors (pet_color_id int8 not null, color_id int8 not null, pet_id int8 not null, primary key (pet_color_id))
create table pets (pet_id int8 not null, age int4, fixed boolean, name varchar(255), sex varchar(255), weight int4, customer_id int8 not null, primary key (pet_id))
create table products (product_id int8 not null, description varchar(255), name varchar(255), price numeric(19, 2), primary key (product_id))
create table work_items (work_item_id int8 not null, description varchar(255), quantity int4, work_item_date timestamp, employee_id int8, pet_id int8, product_id int8, work_order_id int8, primary key (work_item_id))
create table work_orders (work_order_id int8 not null, total numeric(19, 2), transaction_date timestamp, employee_id int8 not null, customer_id int8 not null, primary key (work_order_id))
alter table employees add constraint FK3ieleopldiw0royercatvp00i foreign key (employee_type_id) references employee_types
alter table employees add constraint FKepohgocktmdfqv1l3f9r9lorn foreign key (supervisor_employee_id) references employees
alter table pet_breeds add constraint FKbkjx1jsybkownm9qyhh6h4dem foreign key (breed_id) references breeds
alter table pet_breeds add constraint FKiybewfv9pk7usixrsr03lhepl foreign key (pet_id) references pets
alter table pet_colors add constraint FKffe07qs40e35b9n1b2ig9c8r5 foreign key (color_id) references colors
alter table pet_colors add constraint FKole4asu33n8i6x3xb1a5fyb14 foreign key (pet_id) references pets
alter table pets add constraint FKhili9xtogoo1wl2rx11t95u2e foreign key (customer_id) references customers
alter table work_items add constraint FKm6ep47rclg4x87hnc1d4217np foreign key (employee_id) references employees
alter table work_items add constraint FKim8m5ujjh4aorubvawwi4iaqt foreign key (pet_id) references pets
alter table work_items add constraint FKpxvtho6o1mceabwkvw493o9x9 foreign key (product_id) references products
alter table work_items add constraint FKggj908733lq64g1xgv617igl7 foreign key (work_order_id) references work_orders
alter table work_orders add constraint FKr1v7lpbqwxsxxg4nwevysi8ru foreign key (employee_id) references employees
alter table work_orders add constraint FK9bkpbdto93imqm7u6yg0r2kqw foreign key (customer_id) references customers
create sequence hibernate_sequence start 1 increment 1
create table breeds (breed_id int8 not null, name varchar(255), origin varchar(255), section varchar(255), primary key (breed_id))
create table colors (color_id int8 not null, name varchar(255), primary key (color_id))
create table customers (customer_id int8 not null, street_address varchar(255), city varchar(255), email varchar(255), first_name varchar(255) not null, last_name varchar(255) not null, phone varchar(255), state varchar(255), zip int4, primary key (customer_id))
create table employee_types (employee_type_id int8 not null, name varchar(255), primary key (employee_type_id))
create table employees (employee_id int8 not null, email varchar(255), first_name varchar(255), last_name varchar(255), phone varchar(255), employee_type_id int8 not null, supervisor_employee_id int8, primary key (employee_id))
create table pet_breeds (pet_breed_id int8 not null, breed_id int8 not null, pet_id int8 not null, primary key (pet_breed_id))
create table pet_colors (pet_color_id int8 not null, color_id int8 not null, pet_id int8 not null, primary key (pet_color_id))
create table pets (pet_id int8 not null, age int4, fixed boolean, name varchar(255), sex varchar(255), weight int4, customer_id int8 not null, primary key (pet_id))
create table products (product_id int8 not null, description varchar(255), name varchar(255), price numeric(19, 2), primary key (product_id))
create table work_items (work_item_id int8 not null, description varchar(255), quantity int4, work_item_date timestamp, employee_id int8, pet_id int8, product_id int8, work_order_id int8, primary key (work_item_id))
create table work_orders (work_order_id int8 not null, total numeric(19, 2), transaction_date timestamp, employee_id int8 not null, customer_id int8 not null, primary key (work_order_id))
alter table employees add constraint FK3ieleopldiw0royercatvp00i foreign key (employee_type_id) references employee_types
alter table employees add constraint FKepohgocktmdfqv1l3f9r9lorn foreign key (supervisor_employee_id) references employees
alter table pet_breeds add constraint FKbkjx1jsybkownm9qyhh6h4dem foreign key (breed_id) references breeds
alter table pet_breeds add constraint FKiybewfv9pk7usixrsr03lhepl foreign key (pet_id) references pets
alter table pet_colors add constraint FKffe07qs40e35b9n1b2ig9c8r5 foreign key (color_id) references colors
alter table pet_colors add constraint FKole4asu33n8i6x3xb1a5fyb14 foreign key (pet_id) references pets
alter table pets add constraint FKhili9xtogoo1wl2rx11t95u2e foreign key (customer_id) references customers
alter table work_items add constraint FKm6ep47rclg4x87hnc1d4217np foreign key (employee_id) references employees
alter table work_items add constraint FKim8m5ujjh4aorubvawwi4iaqt foreign key (pet_id) references pets
alter table work_items add constraint FKpxvtho6o1mceabwkvw493o9x9 foreign key (product_id) references products
alter table work_items add constraint FKggj908733lq64g1xgv617igl7 foreign key (work_order_id) references work_orders
alter table work_orders add constraint FKr1v7lpbqwxsxxg4nwevysi8ru foreign key (employee_id) references employees
alter table work_orders add constraint FK9bkpbdto93imqm7u6yg0r2kqw foreign key (customer_id) references customers
create sequence hibernate_sequence start 1 increment 1
create table breeds (breed_id int8 not null, name varchar(255), origin varchar(255), section varchar(255), primary key (breed_id))
create table colors (color_id int8 not null, name varchar(255), primary key (color_id))
create table customers (customer_id int8 not null, street_address varchar(255), city varchar(255), email varchar(255), first_name varchar(255) not null, last_name varchar(255) not null, phone varchar(255), state varchar(255), zip int4, primary key (customer_id))
create table employee_types (employee_type_id int8 not null, name varchar(255), primary key (employee_type_id))
create table employees (employee_id int8 not null, email varchar(255), first_name varchar(255), last_name varchar(255), phone varchar(255), employee_type_id int8 not null, supervisor_employee_id int8, primary key (employee_id))
create table pet_breeds (pet_breed_id int8 not null, breed_id int8 not null, pet_id int8 not null, primary key (pet_breed_id))
create table pet_colors (pet_color_id int8 not null, color_id int8 not null, pet_id int8 not null, primary key (pet_color_id))
create table pets (pet_id int8 not null, age int4, fixed boolean, name varchar(255), sex varchar(255), weight int4, customer_id int8 not null, primary key (pet_id))
create table products (product_id int8 not null, description varchar(255), name varchar(255), price numeric(19, 2), primary key (product_id))
create table work_items (work_item_id int8 not null, description varchar(255), quantity int4, work_item_date timestamp, employee_id int8, pet_id int8, product_id int8, work_order_id int8, primary key (work_item_id))
create table work_orders (work_order_id int8 not null, total numeric(19, 2), transaction_date timestamp, employee_id int8 not null, customer_id int8 not null, primary key (work_order_id))
alter table employees add constraint FK3ieleopldiw0royercatvp00i foreign key (employee_type_id) references employee_types
alter table employees add constraint FKepohgocktmdfqv1l3f9r9lorn foreign key (supervisor_employee_id) references employees
alter table pet_breeds add constraint FKbkjx1jsybkownm9qyhh6h4dem foreign key (breed_id) references breeds
alter table pet_breeds add constraint FKiybewfv9pk7usixrsr03lhepl foreign key (pet_id) references pets
alter table pet_colors add constraint FKffe07qs40e35b9n1b2ig9c8r5 foreign key (color_id) references colors
alter table pet_colors add constraint FKole4asu33n8i6x3xb1a5fyb14 foreign key (pet_id) references pets
alter table pets add constraint FKhili9xtogoo1wl2rx11t95u2e foreign key (customer_id) references customers
alter table work_items add constraint FKm6ep47rclg4x87hnc1d4217np foreign key (employee_id) references employees
alter table work_items add constraint FKim8m5ujjh4aorubvawwi4iaqt foreign key (pet_id) references pets
alter table work_items add constraint FKpxvtho6o1mceabwkvw493o9x9 foreign key (product_id) references products
alter table work_items add constraint FKggj908733lq64g1xgv617igl7 foreign key (work_order_id) references work_orders
alter table work_orders add constraint FKr1v7lpbqwxsxxg4nwevysi8ru foreign key (employee_id) references employees
alter table work_orders add constraint FK9bkpbdto93imqm7u6yg0r2kqw foreign key (customer_id) references customers
create sequence hibernate_sequence start 1 increment 1
create table breeds (breed_id int8 not null, name varchar(255), origin varchar(255), section varchar(255), primary key (breed_id))
create table colors (color_id int8 not null, name varchar(255), primary key (color_id))
create table customers (customer_id int8 not null, street_address varchar(255), city varchar(255), email varchar(255), first_name varchar(255) not null, last_name varchar(255) not null, phone varchar(255), state varchar(255), zip int4, primary key (customer_id))
create table employee_types (employee_type_id int8 not null, name varchar(255), primary key (employee_type_id))
create table employees (employee_id int8 not null, email varchar(255), first_name varchar(255), last_name varchar(255), phone varchar(255), employee_type_id int8 not null, supervisor_employee_id int8, primary key (employee_id))
create table pet_breeds (pet_breed_id int8 not null, breed_id int8 not null, pet_id int8 not null, primary key (pet_breed_id))
create table pet_colors (pet_color_id int8 not null, color_id int8 not null, pet_id int8 not null, primary key (pet_color_id))
create table pets (pet_id int8 not null, age int4, fixed boolean, name varchar(255), sex varchar(255), weight int4, customer_id int8 not null, primary key (pet_id))
create table products (product_id int8 not null, description varchar(255), name varchar(255), price numeric(19, 2), primary key (product_id))
create table work_items (work_item_id int8 not null, description varchar(255), quantity int4, work_item_date timestamp, employee_id int8, pet_id int8, product_id int8, work_order_id int8, primary key (work_item_id))
create table work_orders (work_order_id int8 not null, total numeric(19, 2), transaction_date timestamp, employee_id int8 not null, customer_id int8 not null, primary key (work_order_id))
alter table employees add constraint FK3ieleopldiw0royercatvp00i foreign key (employee_type_id) references employee_types
alter table employees add constraint FKepohgocktmdfqv1l3f9r9lorn foreign key (supervisor_employee_id) references employees
alter table pet_breeds add constraint FKbkjx1jsybkownm9qyhh6h4dem foreign key (breed_id) references breeds
alter table pet_breeds add constraint FKiybewfv9pk7usixrsr03lhepl foreign key (pet_id) references pets
alter table pet_colors add constraint FKffe07qs40e35b9n1b2ig9c8r5 foreign key (color_id) references colors
alter table pet_colors add constraint FKole4asu33n8i6x3xb1a5fyb14 foreign key (pet_id) references pets
alter table pets add constraint FKhili9xtogoo1wl2rx11t95u2e foreign key (customer_id) references customers
alter table work_items add constraint FKm6ep47rclg4x87hnc1d4217np foreign key (employee_id) references employees
alter table work_items add constraint FKim8m5ujjh4aorubvawwi4iaqt foreign key (pet_id) references pets
alter table work_items add constraint FKpxvtho6o1mceabwkvw493o9x9 foreign key (product_id) references products
alter table work_items add constraint FKggj908733lq64g1xgv617igl7 foreign key (work_order_id) references work_orders
alter table work_orders add constraint FKr1v7lpbqwxsxxg4nwevysi8ru foreign key (employee_id) references employees
alter table work_orders add constraint FK9bkpbdto93imqm7u6yg0r2kqw foreign key (customer_id) references customers
create sequence hibernate_sequence start 1 increment 1
create table breeds (breed_id int8 not null, name varchar(255), origin varchar(255), section varchar(255), primary key (breed_id))
create table colors (color_id int8 not null, name varchar(255), primary key (color_id))
create table customers (customer_id int8 not null, street_address varchar(255), city varchar(255), email varchar(255), first_name varchar(255) not null, last_name varchar(255) not null, phone varchar(255), state varchar(255), zip int4, primary key (customer_id))
create table employee_types (employee_type_id int8 not null, name varchar(255), primary key (employee_type_id))
create table employees (employee_id int8 not null, email varchar(255), first_name varchar(255), last_name varchar(255), phone varchar(255), employee_type_id int8 not null, supervisor_employee_id int8, primary key (employee_id))
create table pet_breeds (pet_breed_id int8 not null, breed_id int8 not null, pet_id int8 not null, primary key (pet_breed_id))
create table pet_colors (pet_color_id int8 not null, color_id int8 not null, pet_id int8 not null, primary key (pet_color_id))
create table pets (pet_id int8 not null, age int4, fixed boolean, name varchar(255), sex varchar(255), weight int4, customer_id int8 not null, primary key (pet_id))
create table products (product_id int8 not null, description varchar(255), name varchar(255), price numeric(19, 2), primary key (product_id))
create table work_items (work_item_id int8 not null, description varchar(255), quantity int4, work_item_date timestamp, employee_id int8, pet_id int8, product_id int8, work_order_id int8, primary key (work_item_id))
create table work_orders (work_order_id int8 not null, total numeric(19, 2), transaction_date timestamp, employee_id int8 not null, customer_id int8 not null, primary key (work_order_id))
alter table employees add constraint FK3ieleopldiw0royercatvp00i foreign key (employee_type_id) references employee_types
alter table employees add constraint FKepohgocktmdfqv1l3f9r9lorn foreign key (supervisor_employee_id) references employees
alter table pet_breeds add constraint FKbkjx1jsybkownm9qyhh6h4dem foreign key (breed_id) references breeds
alter table pet_breeds add constraint FKiybewfv9pk7usixrsr03lhepl foreign key (pet_id) references pets
alter table pet_colors add constraint FKffe07qs40e35b9n1b2ig9c8r5 foreign key (color_id) references colors
alter table pet_colors add constraint FKole4asu33n8i6x3xb1a5fyb14 foreign key (pet_id) references pets
alter table pets add constraint FKhili9xtogoo1wl2rx11t95u2e foreign key (customer_id) references customers
alter table work_items add constraint FKm6ep47rclg4x87hnc1d4217np foreign key (employee_id) references employees
alter table work_items add constraint FKim8m5ujjh4aorubvawwi4iaqt foreign key (pet_id) references pets
alter table work_items add constraint FKpxvtho6o1mceabwkvw493o9x9 foreign key (product_id) references products
alter table work_items add constraint FKggj908733lq64g1xgv617igl7 foreign key (work_order_id) references work_orders
alter table work_orders add constraint FKr1v7lpbqwxsxxg4nwevysi8ru foreign key (employee_id) references employees
alter table work_orders add constraint FK9bkpbdto93imqm7u6yg0r2kqw foreign key (customer_id) references customers
create sequence hibernate_sequence start 1 increment 1
create table breeds (breed_id int8 not null, name varchar(255), origin varchar(255), section varchar(255), primary key (breed_id))
create table colors (color_id int8 not null, name varchar(255), primary key (color_id))
create table customers (customer_id int8 not null, street_address varchar(255), city varchar(255), email varchar(255), first_name varchar(255) not null, last_name varchar(255) not null, phone varchar(255), state varchar(255), zip int4, primary key (customer_id))
create table employee_types (employee_type_id int8 not null, name varchar(255), primary key (employee_type_id))
create table employees (employee_id int8 not null, email varchar(255), first_name varchar(255), last_name varchar(255), phone varchar(255), employee_type_id int8 not null, supervisor_employee_id int8, primary key (employee_id))
create table pet_breeds (pet_breed_id int8 not null, breed_id int8 not null, pet_id int8 not null, primary key (pet_breed_id))
create table pet_colors (pet_color_id int8 not null, color_id int8 not null, pet_id int8 not null, primary key (pet_color_id))
create table pets (pet_id int8 not null, age int4, fixed boolean, name varchar(255), sex varchar(255), weight int4, customer_id int8 not null, primary key (pet_id))
create table products (product_id int8 not null, description varchar(255), name varchar(255), price numeric(19, 2), primary key (product_id))
create table work_items (work_item_id int8 not null, description varchar(255), quantity int4, work_item_date timestamp, employee_id int8, pet_id int8, product_id int8, work_order_id int8, primary key (work_item_id))
create table work_orders (work_order_id int8 not null, total numeric(19, 2), transaction_date timestamp, employee_id int8 not null, customer_id int8 not null, primary key (work_order_id))
alter table employees add constraint FK3ieleopldiw0royercatvp00i foreign key (employee_type_id) references employee_types
alter table employees add constraint FKepohgocktmdfqv1l3f9r9lorn foreign key (supervisor_employee_id) references employees
alter table pet_breeds add constraint FKbkjx1jsybkownm9qyhh6h4dem foreign key (breed_id) references breeds
alter table pet_breeds add constraint FKiybewfv9pk7usixrsr03lhepl foreign key (pet_id) references pets
alter table pet_colors add constraint FKffe07qs40e35b9n1b2ig9c8r5 foreign key (color_id) references colors
alter table pet_colors add constraint FKole4asu33n8i6x3xb1a5fyb14 foreign key (pet_id) references pets
alter table pets add constraint FKhili9xtogoo1wl2rx11t95u2e foreign key (customer_id) references customers
alter table work_items add constraint FKm6ep47rclg4x87hnc1d4217np foreign key (employee_id) references employees
alter table work_items add constraint FKim8m5ujjh4aorubvawwi4iaqt foreign key (pet_id) references pets
alter table work_items add constraint FKpxvtho6o1mceabwkvw493o9x9 foreign key (product_id) references products
alter table work_items add constraint FKggj908733lq64g1xgv617igl7 foreign key (work_order_id) references work_orders
alter table work_orders add constraint FKr1v7lpbqwxsxxg4nwevysi8ru foreign key (employee_id) references employees
alter table work_orders add constraint FK9bkpbdto93imqm7u6yg0r2kqw foreign key (customer_id) references customers
create sequence hibernate_sequence start 1 increment 1
create table breeds (breed_id int8 not null, name varchar(255), origin varchar(255), section varchar(255), primary key (breed_id))
create table colors (color_id int8 not null, name varchar(255), primary key (color_id))
create table customers (customer_id int8 not null, street_address varchar(255), city varchar(255), email varchar(255), first_name varchar(255) not null, last_name varchar(255) not null, phone varchar(255), state varchar(255), zip int4, primary key (customer_id))
create table employee_types (employee_type_id int8 not null, name varchar(255), primary key (employee_type_id))
create table employees (employee_id int8 not null, email varchar(255), first_name varchar(255), last_name varchar(255), phone varchar(255), employee_type_id int8 not null, supervisor_employee_id int8, primary key (employee_id))
create table pet_breeds (pet_breed_id int8 not null, breed_id int8 not null, pet_id int8 not null, primary key (pet_breed_id))
create table pet_colors (pet_color_id int8 not null, color_id int8 not null, pet_id int8 not null, primary key (pet_color_id))
create table pets (pet_id int8 not null, age int4, fixed boolean, name varchar(255), sex varchar(255), weight int4, customer_id int8 not null, primary key (pet_id))
create table products (product_id int8 not null, description varchar(255), name varchar(255), price numeric(19, 2), primary key (product_id))
create table work_items (work_item_id int8 not null, description varchar(255), quantity int4, work_item_date timestamp, employee_id int8, pet_id int8, product_id int8, work_order_id int8, primary key (work_item_id))
create table work_orders (work_order_id int8 not null, total numeric(19, 2), transaction_date timestamp, employee_id int8 not null, customer_id int8 not null, primary key (work_order_id))
alter table employees add constraint FK3ieleopldiw0royercatvp00i foreign key (employee_type_id) references employee_types
alter table employees add constraint FKepohgocktmdfqv1l3f9r9lorn foreign key (supervisor_employee_id) references employees
alter table pet_breeds add constraint FKbkjx1jsybkownm9qyhh6h4dem foreign key (breed_id) references breeds
alter table pet_breeds add constraint FKiybewfv9pk7usixrsr03lhepl foreign key (pet_id) references pets
alter table pet_colors add constraint FKffe07qs40e35b9n1b2ig9c8r5 foreign key (color_id) references colors
alter table pet_colors add constraint FKole4asu33n8i6x3xb1a5fyb14 foreign key (pet_id) references pets
alter table pets add constraint FKhili9xtogoo1wl2rx11t95u2e foreign key (customer_id) references customers
alter table work_items add constraint FKm6ep47rclg4x87hnc1d4217np foreign key (employee_id) references employees
alter table work_items add constraint FKim8m5ujjh4aorubvawwi4iaqt foreign key (pet_id) references pets
alter table work_items add constraint FKpxvtho6o1mceabwkvw493o9x9 foreign key (product_id) references products
alter table work_items add constraint FKggj908733lq64g1xgv617igl7 foreign key (work_order_id) references work_orders
alter table work_orders add constraint FKr1v7lpbqwxsxxg4nwevysi8ru foreign key (employee_id) references employees
alter table work_orders add constraint FK9bkpbdto93imqm7u6yg0r2kqw foreign key (customer_id) references customers
