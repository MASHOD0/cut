CREATE TABLE "Users" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar(52),
  "Username" varchar(40),
  "password" varchar,
  "email" varchar,
  "DOB" date,
  "bio" varchar,
  "public" boolean
);

CREATE TABLE "Link" (
  "con_id" SERIAL PRIMARY KEY,
  "u1" int,
  "u2" int
);

CREATE TABLE "Posts" (
  "post_id" SERIAL PRIMARY KEY,
  "user_id" int,
  "post_time" datetime,
  "post_content" varchar,
  "pic" boolean,
  "vid" boolean,
  "link" varchar
);

CREATE TABLE "Chats" (
  "id" SERIAL PRIMARY KEY,
  "from" int,
  "to" int,
  "content" varchar(256),
  "time" datetime
);

ALTER TABLE "Link" ADD FOREIGN KEY ("u1") REFERENCES "Users" ("id");

ALTER TABLE "Link" ADD FOREIGN KEY ("u2") REFERENCES "Users" ("id");

ALTER TABLE "Posts" ADD FOREIGN KEY ("user_id") REFERENCES "Users" ("id");

ALTER TABLE "Chats" ADD FOREIGN KEY ("from") REFERENCES "Users" ("id");

ALTER TABLE "Chats" ADD FOREIGN KEY ("to") REFERENCES "Users" ("id");
