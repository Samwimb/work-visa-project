-- Exported from QuickDBD: https://www.quickdatatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/4suD2Y
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "income" (
    "id" serial   NOT NULL,
    "rank" int   NOT NULL,
    "state" varchar   NOT NULL,
    "median_household_income" float   NOT NULL,
    "margin_of_error" float   NOT NULL,
    "year" int   NOT NULL,
    CONSTRAINT "pk_income" PRIMARY KEY (
        "state"
     )
);

CREATE TABLE "H1b" (
    "id" serial   NOT NULL,
    "CASE_NUMBER" varchar   NOT NULL,
    "CASE_STATUS" varchar   NOT NULL,
    "CASE_SUBMITTED" date   NOT NULL,
    "DECISION_DATE" date   NOT NULL,
    "VISA_CLASS" varchar   NOT NULL,
    "EMPLOYMENT_START_DATE" date   NOT NULL,
    "EMPLOYMENT_END_DATE" date   NOT NULL,
    "EMPLOYER_CITY" varchar   NOT NULL,
    "EMPLOYER_STATE" varchar   NOT NULL,
    "EMPLOYER_POSTAL_CODE" varchar   NOT NULL,
    "JOB_TITLE" varchar   NOT NULL,
    "SOC_CODE" varchar   NOT NULL,
    "SOC_NAME" varchar   NOT NULL,
    "PREVAILING_WAGE" varchar   NOT NULL,
    "PW_UNIT_OF_PAY" varchar   NOT NULL,
    "WILLFUL_VIOLATOR" varchar   NOT NULL,
    "WORKSITE_CITY" varchar   NOT NULL,
    "WORKSITE_STATE" varchar   NOT NULL,
    "WORKSITE_POSTAL_CODE" varchar   NOT NULL
);

ALTER TABLE "H1b" ADD CONSTRAINT "fk_H1b_EMPLOYER_STATE" FOREIGN KEY("EMPLOYER_STATE")
REFERENCES "income" ("state");

