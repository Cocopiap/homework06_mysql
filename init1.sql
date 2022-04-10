create schema demo_main;
create schema demo_branch1;
create schema demo_branch2;

create table demo_main.users(id bigint, name varchar(8), comment varchar(16));
create table demo_branch1.users(id bigint, name varchar(8), comment varchar(16));
create table demo_branch2.users(id bigint, name varchar(8), comment varchar(16));


insert into demo_main.users values(1,'piap01','main'),(2,'piap02','main'),(3,'piap03','main');
insert into demo_branch1.users values(1,'piap01','branch1'),(2,'piap02','branch1'),(3,'piap03','branch1');
insert into demo_branch2.users values(1,'piap01','branch2'),(2,'piap02','branch2'),(3,'piap03','branch2');
create schema demo_ds1;
create schema demo_ds2;

CREATE TABLE IF NOT EXISTS demo_ds1.t_order1 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS demo_ds1.t_order2 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS demo_ds2.t_order1 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));
CREATE TABLE IF NOT EXISTS demo_ds2.t_order2 (order_id BIGINT NOT NULL AUTO_INCREMENT, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_id));

CREATE TABLE IF NOT EXISTS demo_ds1.t_order_item1 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS demo_ds1.t_order_item2 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS demo_ds2.t_order_item1 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
CREATE TABLE IF NOT EXISTS demo_ds2.t_order_item2 (order_item_id BIGINT NOT NULL AUTO_INCREMENT, order_id BIGINT NOT NULL, user_id INT NOT NULL, status VARCHAR(50), PRIMARY KEY (order_item_id));
