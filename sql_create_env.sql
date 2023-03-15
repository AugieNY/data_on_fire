

CREATE TABLE IF NOT EXISTS public.all_data
(
    clientnum integer,
    attrition_flag character(50) COLLATE pg_catalog."default",
    customer_age integer,
    gender character(50) COLLATE pg_catalog."default",
    dependent_count integer,
    education_level character(50) COLLATE pg_catalog."default",
    marital_status character(50) COLLATE pg_catalog."default",
    income_category character(50) COLLATE pg_catalog."default",
    card_category character(50) COLLATE pg_catalog."default",
    months_on_book integer,
    total_relationship_count integer,
    months_inactive_12_mon integer,
    contacts_count_12_mon integer,
    credit_limit double precision,
    total_revolving_bal double precision,
    avg_open_to_buy double precision,
    total_amt_chng_q4_q1 double precision,
    total_trans_amt double precision,
    total_trans_ct double precision,
    total_ct_chng_q4_q1 double precision,
    avg_utilization_ratio double precision,
    "Weekly_median_earnings" double precision,
    "Yearly_median_earnings" double precision
);

CREATE TABLE IF NOT EXISTS public.bank_churn
(
    clientnum integer,
    attrition_flag character(50) COLLATE pg_catalog."default",
    customer_age integer,
    gender character(50) COLLATE pg_catalog."default",
    dependent_count integer,
    education_level character(50) COLLATE pg_catalog."default",
    marital_status character(50) COLLATE pg_catalog."default",
    income_category character(50) COLLATE pg_catalog."default",
    card_category character(50) COLLATE pg_catalog."default",
    months_on_book integer,
    total_relationship_count integer,
    months_inactive_12_mon integer,
    contacts_count_12_mon integer,
    credit_limit double precision,
    total_revolving_bal double precision,
    avg_open_to_buy double precision,
    total_amt_chng_q4_q1 double precision,
    total_trans_amt double precision,
    total_trans_ct double precision,
    total_ct_chng_q4_q1 double precision,
    avg_utilization_ratio double precision
);

CREATE TABLE IF NOT EXISTS public.median_byeducation
(
    educational_attainment character(50) COLLATE pg_catalog."default",
    median_weekly_earnings double precision,
    unemployment_rate character(15) COLLATE pg_catalog."default"
);

CREATE TABLE IF NOT EXISTS public.medians
(
    "Education" text COLLATE pg_catalog."default",
    "Weekly_median_earnings" double precision,
    "Yearly_median_earnings" double precision
);
