create table announcements
(
    id         int auto_increment
        primary key,
    title      varchar(255)                       not null,
    message    text                               not null,
    created_at datetime default CURRENT_TIMESTAMP not null,
    updated_at datetime default CURRENT_TIMESTAMP not null
);

create table routes
(
    id             int auto_increment
        primary key,
    name           varchar(255)                       not null,
    start_location varchar(255)                       not null,
    end_location   varchar(255)                       not null,
    start_time     time                               not null,
    end_time       time                               not null,
    created_at     datetime default CURRENT_TIMESTAMP not null,
    updated_at     datetime default CURRENT_TIMESTAMP not null,
    number         int                                null,
    is_hot         int                                null
);

create table stations
(
    id         int auto_increment
        primary key,
    route_id   int                                not null,
    name       varchar(255)                       not null,
    sequence   int                                not null,
    created_at datetime default CURRENT_TIMESTAMP not null,
    updated_at datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    constraint stations_ibfk_1
        foreign key (route_id) references routes (id)
);

create index route_id
    on stations (route_id);

create table users
(
    id         int auto_increment
        primary key,
    name       varchar(255)                       not null,
    email      varchar(255)                       not null,
    password   varchar(255)                       not null,
    created_at datetime default CURRENT_TIMESTAMP not null,
    updated_at datetime default CURRENT_TIMESTAMP not null,
    is_manager tinyint(1)                         null
);

create table questions
(
    id         int auto_increment
        primary key,
    user_id    int                                not null,
    subject    varchar(255)                       not null,
    message    text                               not null,
    created_at datetime default CURRENT_TIMESTAMP not null,
    updated_at datetime default CURRENT_TIMESTAMP not null,
    reply      text                               null,
    constraint questions_ibfk_1
        foreign key (user_id) references users (id)
            on update cascade on delete cascade
);

create index user_id
    on questions (user_id);


