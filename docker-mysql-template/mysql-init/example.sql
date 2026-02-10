set names 'utf8mb4';

drop schema if exists `example_db`;
create schema `example_db` default charset=utf8mb4 collate=utf8mb4_general_ci;

use `example_db`;

set foreign_key_checks = 0;

create table `test` (
    `id` int unsigned not null auto_increment,

    `key` varchar(255) not null unique,
    `value` varchar(255) not null,

    `created` datetime not null default current_timestamp(),
    `updated` datetime not null default current_timestamp() on update current_timestamp(),

    primary key (`id`)
) engine=innodb;

set foreign_key_checks = 1;

insert into `test` (`key`, `value`)
values ('Foo', 'FOObar'),
       ('Bar', 'FooBAR'),
       ('Baz', 'Foobar BAZ'),
       ('Buzz', 'Foobar Baz BUZZ');
