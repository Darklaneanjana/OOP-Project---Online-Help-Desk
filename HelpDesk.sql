create table Client (
    id int not null primary key auto_increment,
    name varchar(255) not null,
    email varchar(255) not null,
    phone varchar(255) not null,
    address varchar(255) not null,
    company varchar(255) not null,
    notes varchar(255) not null,
    created_at datetime not null,
    client_type varchar(255) not null,
);

-- Ticet: HelpDesk

CREATE TABLE Ticket (
    id int not null primary key auto_increment,
    title varchar(255) not null,
    description varchar(255) not null,
    assignedTo varchar(255) default null,
    priority varchar(255) default null,
    status_id int default 0,
    client_id int not null,
    created_at datetime current_timestamp,
    due_at datetime not null,
);

insert into Ticket (title, description, assignedTo, priority, status_id, client_id, created_at, due_at) 
values ('Ticket 1', 'Ticket 1 description', '', '', 1, 1, now(), now() + interval 1 day);

