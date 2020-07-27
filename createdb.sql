create table budget(
    codename varchar(255) primary key,
    daily_limit integer
);

create table category(
    codename varchar(255) primary key,
    name varchar(255),
    is_base_expense boolean,
    aliases text
);

create table expense(
    id integer primary key,
    amount integer,
    created datetime,
    category_codename integer,
    raw_text text,
    FOREIGN KEY(category_codename) REFERENCES category(codename)
);

insert into category (codename, name, is_base_expense, aliases)
values
    ("products", "продукты", true, "еда, food"),
    ("walk", "гулять", true, "перекус, гулять, погулять, пепси, pepsi, фастфуд, mcdonalds, kfc, burger king, чипсы, кино, shawarma, шаурма, шавуха, шаверма, doner, doner king"),
    ("technics", "техника", true, "pc, пк, компьютер, монитор, cable, провода, клавиатура, keyboard, мышь, mouse, headphones, наушники, smartphone, телефон, консоль"),
    ("games", "игры", true, "ps4, ps5, playstation, ps game, pc game, game"),
    ("gift", "подарки", false, "8 марта, др, нг"),
    ("other", "прочее", true, " ");



insert into budget(codename, daily_limit) values ('base', 500);
