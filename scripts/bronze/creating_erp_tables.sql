DROP TABLE IF EXISTS bronze.erp_loc_a101;
create table bronze.erp_loc_a101 (
	cid varchar(25),
    cntry varchar(50)
);

DROP TABLE IF EXISTS bronze.erp_px_cat_g1v2;
create table bronze.erp_px_cat_g1v2 (
	id varchar(50),
    cat varchar(50),
    subcat varchar(50),
    maintenance varchar(15)
);

DROP TABLE IF EXISTS bronze.erp_cust_az12;
create table bronze.erp_cust_az12 (
		cid varchar(50),
        bdate date,
        gen varchar(50)
);