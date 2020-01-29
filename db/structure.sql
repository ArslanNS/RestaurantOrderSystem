CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "username" varchar,
  "password" varchar,
  "first_name" varchar,
  "last_name" varchar,
  "created_at" timestamp,
  "modified_at" timestamp,
  "last_login" timestamp,
  "active" boolean,
  "role" int
);

CREATE TABLE "roles" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "description" text
);

CREATE TABLE "menu_sections" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "description" text
);

CREATE TABLE "menu_sections_items" (
  "section" int,
  "item" int,
  PRIMARY KEY ("section", "item")
);

CREATE TABLE "menu_items" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "description" text,
  "calories" int,
  "price" double,
  "active" boolean
);

CREATE TABLE "menu_contains" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "description" text
);

CREATE TABLE "menu_items_contains" (
  "contains" int,
  "item" int,
  "severity" varchar,
  PRIMARY KEY ("contains", "item")
);

CREATE TABLE "menu_descriptor" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "menu_items_descriptor" (
  "descriptor" int,
  "item" int,
  PRIMARY KEY ("descriptor", "item")
);

ALTER TABLE "users" ADD FOREIGN KEY ("role") REFERENCES "roles" ("id");

ALTER TABLE "menu_sections_items" ADD FOREIGN KEY ("section") REFERENCES "menu_sections" ("id");

ALTER TABLE "menu_sections_items" ADD FOREIGN KEY ("item") REFERENCES "menu_items" ("id");

ALTER TABLE "menu_items_contains" ADD FOREIGN KEY ("contains") REFERENCES "menu_contains" ("id");

ALTER TABLE "menu_items_contains" ADD FOREIGN KEY ("item") REFERENCES "menu_items" ("id");

ALTER TABLE "menu_items_descriptor" ADD FOREIGN KEY ("descriptor") REFERENCES "menu_descriptor" ("id");

ALTER TABLE "menu_items_descriptor" ADD FOREIGN KEY ("item") REFERENCES "menu_items" ("id");
