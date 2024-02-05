-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" text   NOT NULL,
    "description" text   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" text   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" text   NOT NULL,
    "currency" text   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" text   NOT NULL,
    "subgategory_id" text   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "contact_id","category_id","subgategory_id"
     )
);

CREATE TABLE "category" (
    "category_id" text   NOT NULL,
    "category" text   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" text   NOT NULL,
    "subcategory" text   NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" text   NOT NULL,
    "last_name" text   NOT NULL,
    "email" text   NOT NULL
);

ALTER TABLE "category" ADD CONSTRAINT "fk_category_category_id" FOREIGN KEY("category_id")
REFERENCES "campaign" ("category_id");

ALTER TABLE "subcategory" ADD CONSTRAINT "fk_subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "campaign" ("subgategory_id");

ALTER TABLE "contacts" ADD CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign" ("contact_id");

