--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: budget_expenditures; Type: TABLE; Schema: public; Owner: scmp; Tablespace: 
--

CREATE TABLE budget_expenditures (
    head smallint NOT NULL,
    name character varying(128),
    actual2006 integer,
    approved2006 integer,
    revised2006 integer,
    estimate2006 integer,
    actual2007 integer,
    approved2007 integer,
    revised2007 integer,
    estimate2007 integer,
    actual2008 integer,
    approved2008 integer,
    revised2008 integer,
    estimate2008 integer,
    actual2009 integer,
    approved2009 integer,
    revised2009 integer,
    estimate2009 integer,
    actual2010 integer,
    approved2010 integer,
    revised2010 integer,
    estimate2010 integer,
    actual2011 integer,
    approved2011 integer,
    revised2011 integer,
    estimate2011 integer,
    actual2012 integer,
    approved2012 integer,
    revised2012 integer,
    estimate2012 integer,
    actual2013 integer,
    approved2013 integer,
    revised2013 integer,
    estimate2013 integer,
    actual2014 integer,
    approved2014 integer,
    revised2014 integer,
    estimate2014 integer
);


ALTER TABLE public.budget_expenditures OWNER TO scmp;

--
-- Name: budget_expenditures_heads; Type: TABLE; Schema: public; Owner: scmp; Tablespace: 
--

CREATE TABLE budget_expenditures_heads (
    head_no smallint NOT NULL,
    head_name character varying(512)
);


ALTER TABLE public.budget_expenditures_heads OWNER TO scmp;

--
-- Name: budget_expenditures_programmes; Type: TABLE; Schema: public; Owner: scmp; Tablespace: 
--

CREATE TABLE budget_expenditures_programmes (
    year smallint NOT NULL,
    head_no smallint NOT NULL,
    programme_no smallint NOT NULL,
    programme_name character varying(512),
    programme_aim text,
    actual numeric,
    original numeric,
    revised numeric,
    estimate numeric
);


ALTER TABLE public.budget_expenditures_programmes OWNER TO scmp;

--
-- Name: budget_expenditures_totals; Type: TABLE; Schema: public; Owner: scmp; Tablespace: 
--

CREATE TABLE budget_expenditures_totals (
    head_no smallint NOT NULL,
    head_name character varying(512),
    actual_recurrent_2003 integer,
    approved_recurrent_2004 integer,
    revised_recurrent_2004 integer,
    estimate_recurrent_2005 integer,
    actual_nonrecurrent_2003 integer,
    approved_nonrecurrent_2004 integer,
    revised_nonrecurrent_2004 integer,
    estimate_nonrecurrent_2005 integer,
    actual_operating_2003 integer,
    approved_operating_2004 integer,
    revised_operating_2004 integer,
    estimate_operating_2005 integer,
    actual_plant_equipment_works_2003 integer,
    approved_plant_equipment_works_2004 integer,
    revised_plant_equipment_works_2004 integer,
    estimate_plant_equipment_works_2005 integer,
    actual_subventions_2003 integer,
    approved_subventions_2004 integer,
    revised_subventions_2004 integer,
    estimate_subventions_2005 integer,
    actual_capital_2003 integer,
    approved_capital_2004 integer,
    revised_capital_2004 integer,
    estimate_capital_2005 integer,
    actual_expenditure_2003 integer,
    approved_expenditure_2004 integer,
    revised_expenditure_2004 integer,
    estimate_expenditure_2005 integer,
    actual_recurrent_2004 integer,
    approved_recurrent_2005 integer,
    revised_recurrent_2005 integer,
    estimate_recurrent_2006 integer,
    actual_nonrecurrent_2004 integer,
    approved_nonrecurrent_2005 integer,
    revised_nonrecurrent_2005 integer,
    estimate_nonrecurrent_2006 integer,
    actual_operating_2004 integer,
    approved_operating_2005 integer,
    revised_operating_2005 integer,
    estimate_operating_2006 integer,
    actual_plant_equipment_works_2004 integer,
    approved_plant_equipment_works_2005 integer,
    revised_plant_equipment_works_2005 integer,
    estimate_plant_equipment_works_2006 integer,
    actual_subventions_2004 integer,
    approved_subventions_2005 integer,
    revised_subventions_2005 integer,
    estimate_subventions_2006 integer,
    actual_capital_2004 integer,
    approved_capital_2005 integer,
    revised_capital_2005 integer,
    estimate_capital_2006 integer,
    actual_expenditure_2004 integer,
    approved_expenditure_2005 integer,
    revised_expenditure_2005 integer,
    estimate_expenditure_2006 integer,
    actual_recurrent_2005 integer,
    approved_recurrent_2006 integer,
    revised_recurrent_2006 integer,
    estimate_recurrent_2007 integer,
    actual_nonrecurrent_2005 integer,
    approved_nonrecurrent_2006 integer,
    revised_nonrecurrent_2006 integer,
    estimate_nonrecurrent_2007 integer,
    actual_operating_2005 integer,
    approved_operating_2006 integer,
    revised_operating_2006 integer,
    estimate_operating_2007 integer,
    actual_plant_equipment_works_2005 integer,
    approved_plant_equipment_works_2006 integer,
    revised_plant_equipment_works_2006 integer,
    estimate_plant_equipment_works_2007 integer,
    actual_subventions_2005 integer,
    approved_subventions_2006 integer,
    revised_subventions_2006 integer,
    estimate_subventions_2007 integer,
    actual_capital_2005 integer,
    approved_capital_2006 integer,
    revised_capital_2006 integer,
    estimate_capital_2007 integer,
    actual_expenditure_2005 integer,
    approved_expenditure_2006 integer,
    revised_expenditure_2006 integer,
    estimate_expenditure_2007 integer,
    actual_recurrent_2006 integer,
    approved_recurrent_2007 integer,
    revised_recurrent_2007 integer,
    estimate_recurrent_2008 integer,
    actual_nonrecurrent_2006 integer,
    approved_nonrecurrent_2007 integer,
    revised_nonrecurrent_2007 integer,
    estimate_nonrecurrent_2008 integer,
    actual_operating_2006 integer,
    approved_operating_2007 integer,
    revised_operating_2007 integer,
    estimate_operating_2008 integer,
    actual_plant_equipment_works_2006 integer,
    approved_plant_equipment_works_2007 integer,
    revised_plant_equipment_works_2007 integer,
    estimate_plant_equipment_works_2008 integer,
    actual_subventions_2006 integer,
    approved_subventions_2007 integer,
    revised_subventions_2007 integer,
    estimate_subventions_2008 integer,
    actual_capital_2006 integer,
    approved_capital_2007 integer,
    revised_capital_2007 integer,
    estimate_capital_2008 integer,
    actual_expenditure_2006 integer,
    approved_expenditure_2007 integer,
    revised_expenditure_2007 integer,
    estimate_expenditure_2008 integer,
    actual_recurrent_2007 integer,
    approved_recurrent_2008 integer,
    revised_recurrent_2008 integer,
    estimate_recurrent_2009 integer,
    actual_nonrecurrent_2007 integer,
    approved_nonrecurrent_2008 integer,
    revised_nonrecurrent_2008 integer,
    estimate_nonrecurrent_2009 integer,
    actual_operating_2007 integer,
    approved_operating_2008 integer,
    revised_operating_2008 integer,
    estimate_operating_2009 integer,
    actual_plant_equipment_works_2007 integer,
    approved_plant_equipment_works_2008 integer,
    revised_plant_equipment_works_2008 integer,
    estimate_plant_equipment_works_2009 integer,
    actual_subventions_2007 integer,
    approved_subventions_2008 integer,
    revised_subventions_2008 integer,
    estimate_subventions_2009 integer,
    actual_capital_2007 integer,
    approved_capital_2008 integer,
    revised_capital_2008 integer,
    estimate_capital_2009 integer,
    actual_expenditure_2007 integer,
    approved_expenditure_2008 integer,
    revised_expenditure_2008 integer,
    estimate_expenditure_2009 integer,
    actual_recurrent_2008 integer,
    approved_recurrent_2009 integer,
    revised_recurrent_2009 integer,
    estimate_recurrent_2010 integer,
    actual_nonrecurrent_2008 integer,
    approved_nonrecurrent_2009 integer,
    revised_nonrecurrent_2009 integer,
    estimate_nonrecurrent_2010 integer,
    actual_operating_2008 integer,
    approved_operating_2009 integer,
    revised_operating_2009 integer,
    estimate_operating_2010 integer,
    actual_plant_equipment_works_2008 integer,
    approved_plant_equipment_works_2009 integer,
    revised_plant_equipment_works_2009 integer,
    estimate_plant_equipment_works_2010 integer,
    actual_subventions_2008 integer,
    approved_subventions_2009 integer,
    revised_subventions_2009 integer,
    estimate_subventions_2010 integer,
    actual_capital_2008 integer,
    approved_capital_2009 integer,
    revised_capital_2009 integer,
    estimate_capital_2010 integer,
    actual_expenditure_2008 integer,
    approved_expenditure_2009 integer,
    revised_expenditure_2009 integer,
    estimate_expenditure_2010 integer,
    actual_recurrent_2009 integer,
    approved_recurrent_2010 integer,
    revised_recurrent_2010 integer,
    estimate_recurrent_2011 integer,
    actual_nonrecurrent_2009 integer,
    approved_nonrecurrent_2010 integer,
    revised_nonrecurrent_2010 integer,
    estimate_nonrecurrent_2011 integer,
    actual_operating_2009 integer,
    approved_operating_2010 integer,
    revised_operating_2010 integer,
    estimate_operating_2011 integer,
    actual_plant_equipment_works_2009 integer,
    approved_plant_equipment_works_2010 integer,
    revised_plant_equipment_works_2010 integer,
    estimate_plant_equipment_works_2011 integer,
    actual_subventions_2009 integer,
    approved_subventions_2010 integer,
    revised_subventions_2010 integer,
    estimate_subventions_2011 integer,
    actual_capital_2009 integer,
    approved_capital_2010 integer,
    revised_capital_2010 integer,
    estimate_capital_2011 integer,
    actual_expenditure_2009 integer,
    approved_expenditure_2010 integer,
    revised_expenditure_2010 integer,
    estimate_expenditure_2011 integer,
    actual_recurrent_2010 integer,
    approved_recurrent_2011 integer,
    revised_recurrent_2011 integer,
    estimate_recurrent_2012 integer,
    actual_nonrecurrent_2010 integer,
    approved_nonrecurrent_2011 integer,
    revised_nonrecurrent_2011 integer,
    estimate_nonrecurrent_2012 integer,
    actual_operating_2010 integer,
    approved_operating_2011 integer,
    revised_operating_2011 integer,
    estimate_operating_2012 integer,
    actual_plant_equipment_works_2010 integer,
    approved_plant_equipment_works_2011 integer,
    revised_plant_equipment_works_2011 integer,
    estimate_plant_equipment_works_2012 integer,
    actual_subventions_2010 integer,
    approved_subventions_2011 integer,
    revised_subventions_2011 integer,
    estimate_subventions_2012 integer,
    actual_capital_2010 integer,
    approved_capital_2011 integer,
    revised_capital_2011 integer,
    estimate_capital_2012 integer,
    actual_expenditure_2010 integer,
    approved_expenditure_2011 integer,
    revised_expenditure_2011 integer,
    estimate_expenditure_2012 integer,
    actual_recurrent_2011 integer,
    approved_recurrent_2012 integer,
    revised_recurrent_2012 integer,
    estimate_recurrent_2013 integer,
    actual_nonrecurrent_2011 integer,
    approved_nonrecurrent_2012 integer,
    revised_nonrecurrent_2012 integer,
    estimate_nonrecurrent_2013 integer,
    actual_operating_2011 integer,
    approved_operating_2012 integer,
    revised_operating_2012 integer,
    estimate_operating_2013 integer,
    actual_plant_equipment_works_2011 integer,
    approved_plant_equipment_works_2012 integer,
    revised_plant_equipment_works_2012 integer,
    estimate_plant_equipment_works_2013 integer,
    actual_subventions_2011 integer,
    approved_subventions_2012 integer,
    revised_subventions_2012 integer,
    estimate_subventions_2013 integer,
    actual_capital_2011 integer,
    approved_capital_2012 integer,
    revised_capital_2012 integer,
    estimate_capital_2013 integer,
    actual_expenditure_2011 integer,
    approved_expenditure_2012 integer,
    revised_expenditure_2012 integer,
    estimate_expenditure_2013 integer
);


ALTER TABLE public.budget_expenditures_totals OWNER TO scmp;

--
-- Name: budget_policy_areas; Type: TABLE; Schema: public; Owner: scmp; Tablespace: 
--

CREATE TABLE budget_policy_areas (
    policy_area_id smallint NOT NULL,
    policy_area character varying(128),
    officer character varying(64) NOT NULL,
    head_no smallint NOT NULL,
    head_name character varying(128),
    programmes character varying(64)
);


ALTER TABLE public.budget_policy_areas OWNER TO scmp;

--
-- Name: budget_revenues; Type: TABLE; Schema: public; Owner: scmp; Tablespace: 
--

CREATE TABLE budget_revenues (
    head smallint NOT NULL,
    name character varying(128),
    actual2006 integer,
    approved2006 integer,
    revised2006 integer,
    estimate2006 integer,
    actual2007 integer,
    approved2007 integer,
    revised2007 integer,
    estimate2007 integer,
    actual2008 integer,
    approved2008 integer,
    revised2008 integer,
    estimate2008 integer,
    actual2009 integer,
    approved2009 integer,
    revised2009 integer,
    estimate2009 integer,
    actual2010 integer,
    approved2010 integer,
    revised2010 integer,
    estimate2010 integer,
    actual2011 integer,
    approved2011 integer,
    revised2011 integer,
    estimate2011 integer,
    actual2012 integer,
    approved2012 integer,
    revised2012 integer,
    estimate2012 integer,
    actual2013 integer,
    approved2013 integer,
    revised2013 integer,
    estimate2013 integer,
    actual2014 integer,
    approved2014 integer,
    revised2014 integer,
    estimate2014 integer
);


ALTER TABLE public.budget_revenues OWNER TO scmp;

--
-- Name: budget_subheads; Type: TABLE; Schema: public; Owner: scmp; Tablespace: 
--

CREATE TABLE budget_subheads (
    year smallint,
    head_no smallint,
    subhead_name character varying(512),
    subhead_no character(3),
    item_no character(3),
    title character varying(256),
    note_actual character varying(256),
    note_original character varying(256),
    note_revised character varying(256),
    note_estimate character varying(256),
    reimbursement bigint,
    actual bigint,
    approved bigint,
    revised bigint,
    estimate bigint
);


ALTER TABLE public.budget_subheads OWNER TO scmp;

--
-- Name: budget_subheads_expenditures; Type: VIEW; Schema: public; Owner: scmp
--

CREATE VIEW budget_subheads_expenditures AS
 SELECT budget_subheads.year,
    budget_subheads.head_no,
    budget_subheads.subhead_no,
    budget_subheads.subhead_name,
    budget_subheads.reimbursement,
    budget_subheads.item_no,
    budget_subheads.title,
    budget_subheads.actual,
    budget_subheads.revised,
    budget_subheads.estimate
   FROM budget_subheads
  WHERE ((((budget_subheads.head_no > 11) OR (budget_subheads.head_no < (-11))) AND ((budget_subheads.subhead_name)::text !~~ 'Total, %'::text)) AND ((budget_subheads.subhead_name)::text !~~ 'Total Expenditure%'::text))
  ORDER BY budget_subheads.year, budget_subheads.head_no, budget_subheads.subhead_no;


ALTER TABLE public.budget_subheads_expenditures OWNER TO scmp;

--
-- Name: budget_subheads_revenues; Type: VIEW; Schema: public; Owner: scmp
--

CREATE VIEW budget_subheads_revenues AS
 SELECT budget_subheads.year,
    budget_subheads.head_no,
    budget_subheads.subhead_name,
    budget_subheads.subhead_no,
    budget_subheads.item_no,
    budget_subheads.title,
    budget_subheads.note_actual,
    budget_subheads.note_original,
    budget_subheads.note_revised,
    budget_subheads.note_estimate,
    budget_subheads.reimbursement,
    budget_subheads.actual,
    budget_subheads.approved,
    budget_subheads.revised,
    budget_subheads.estimate
   FROM budget_subheads
  WHERE ((((budget_subheads.head_no <= 11) AND (budget_subheads.head_no >= (-11))) AND ((budget_subheads.subhead_name)::text <> 'Total'::text)) AND ((budget_subheads.subhead_name)::text <> 'Sub-total'::text))
  ORDER BY budget_subheads.year, budget_subheads.head_no, budget_subheads.subhead_no;


ALTER TABLE public.budget_subheads_revenues OWNER TO scmp;

--
-- Name: budget_expenditures_heads_pkey; Type: CONSTRAINT; Schema: public; Owner: scmp; Tablespace: 
--

ALTER TABLE ONLY budget_expenditures_heads
    ADD CONSTRAINT budget_expenditures_heads_pkey PRIMARY KEY (head_no);


--
-- Name: budget_expenditures_programmes_pkey; Type: CONSTRAINT; Schema: public; Owner: scmp; Tablespace: 
--

ALTER TABLE ONLY budget_expenditures_programmes
    ADD CONSTRAINT budget_expenditures_programmes_pkey PRIMARY KEY (year, head_no, programme_no);


--
-- Name: budget_expenditures_totals_pkey; Type: CONSTRAINT; Schema: public; Owner: scmp; Tablespace: 
--

ALTER TABLE ONLY budget_expenditures_totals
    ADD CONSTRAINT budget_expenditures_totals_pkey PRIMARY KEY (head_no);


--
-- Name: budget_policy_areas_pkey; Type: CONSTRAINT; Schema: public; Owner: scmp; Tablespace: 
--

ALTER TABLE ONLY budget_policy_areas
    ADD CONSTRAINT budget_policy_areas_pkey PRIMARY KEY (policy_area_id, officer, head_no);


--
-- Name: expenditures_pkey; Type: CONSTRAINT; Schema: public; Owner: scmp; Tablespace: 
--

ALTER TABLE ONLY budget_expenditures
    ADD CONSTRAINT expenditures_pkey PRIMARY KEY (head);


--
-- Name: revenues_pkey; Type: CONSTRAINT; Schema: public; Owner: scmp; Tablespace: 
--

ALTER TABLE ONLY budget_revenues
    ADD CONSTRAINT revenues_pkey PRIMARY KEY (head);


--
-- PostgreSQL database dump complete
--

