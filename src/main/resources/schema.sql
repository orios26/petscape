create table breeds (breed_id INTEGER not null,name varchar(255), primary key (breed_id))

create table colors (color_id INTEGER not null,name varchar(255), primary key (color_id))

create table customers (customer_id INTEGER not null, street_address varchar(255), city varchar(255), email varchar(255), first_name varchar(255), last_name varchar(255), state varchar(255), zip int4, primary key (customer_id))

create table breeds (breed_id INTEGER not null, name varchar(255), origin varchar(255), section varchar(255), primary key (breed_id))

create table pet_colors (pet_color_id INTEGER not null, color_id INTEGER not null, pet_id INTEGER not null, primary key (pet_color_id))

create table pets (pet_id INTEGER not null, age int4, fixed boolean, name varchar(255), sex varchar(255), weight int4, customer_id INTEGER not null, primary key (pet_id))

alter table pet_breeds add constraint FKbkjx1jsybkownm9qyhh6h4dem foreign key (breed_id) references breeds

alter table pet_breeds add constraint FKiybewfv9pk7usixrsr03lhepl foreign key (pet_id) references pets

alter table pet_colors add constraint FKffe07qs40e35b9n1b2ig9c8r5 foreign key (color_id) references colors

alter table pet_colors add constraint FKole4asu33n8i6x3xb1a5fyb14 foreign key (pet_id) references pets

alter table pets add constraint FKhili9xtogoo1wl2rx11t95u2e foreign key (customer_id) references customers
