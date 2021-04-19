# merge 01
SELECT * FROM aly6980.main_table as a

JOIN aly6980.us_incomebyzip as b 
ON INSTR(b.postalCode, a.postalCode) > 0 or a.postalCode = CONCAT('0', b.postalCode)

JOIN aly6980.sales_data_2020 as c 
ON INSTR(c.ZIPCODE, a.postalCode) > 0 or a.postalCode = CONCAT('0', c.ZIPCODE)

JOIN aly6980.ahg_dataset as d 
ON INSTR(d.postalCode, a.postalCode) > 0 or a.postalCode = CONCAT('0', d.postalCode);

# merge 02
SELECT * FROM aly6980.merge_data_zip_final as a
JOIN aly6980.domestic_mig as b 
ON INSTR(b.postalCode, a.postalCode) > 0 or a.postalCode = CONCAT('0', b.postalCode)