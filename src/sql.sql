create table Knowledgebase (
    id integer primary key autoincrement,
    author id default 0,
    title text,
    description text,
    created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp
);

