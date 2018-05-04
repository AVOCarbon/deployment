-- 04/05/18
-- adding extra data on C09 to create a FK from T01 to C09
-- drop not null for the last 2 columns on C09



ALTER TABLE dw."C09_PurchasingFamilies"
   ALTER COLUMN "Purchasing_category_code" DROP NOT NULL;
ALTER TABLE dw."C09_PurchasingFamilies"
   ALTER COLUMN "Purchasing_category_name" DROP NOT NULL;
   
   
-- inserting datas only avalaible in C02, in C09


INSERT INTO dw."C09_PurchasingFamilies" ("Family_code","Family_name","Family_sub1","family_sub_name") VALUES ('CCHO','Choke/Inductor','CC','Choke/Inductor');
INSERT INTO dw."C09_PurchasingFamilies" ("Family_code","Family_name","Family_sub1","family_sub_name") VALUES ('CFRI','Friction parts','CF','Friction parts');
INSERT INTO dw."C09_PurchasingFamilies" ("Family_code","Family_name","Family_sub1","family_sub_name") VALUES ('COTH','Other component','CO','Other component');
INSERT INTO dw."C09_PurchasingFamilies" ("Family_code","Family_name","Family_sub1","family_sub_name") VALUES ('CSLE','Sleeve','CS','Sleeve');
INSERT INTO dw."C09_PurchasingFamilies" ("Family_code","Family_name","Family_sub1","family_sub_name") VALUES ('CSPR','Spring','CS','Spring');
INSERT INTO dw."C09_PurchasingFamilies" ("Family_code","Family_name","Family_sub1","family_sub_name") VALUES ('CSTA','Stamping','CS','Stamping');
-- INSERT INTO dw."C09_PurchasingFamilies" ("Family_code","Family_name","Family_sub1","family_sub_name") VALUES ('FBC','Brushcard','FB','Brushcard')
-- INSERT INTO dw."C09_PurchasingFamilies" ("Family_code","Family_name","Family_sub1","family_sub_name") VALUES ('FBRA','Brush assy','FB','Brush assy')
-- INSERT INTO dw."C09_PurchasingFamilies" ("Family_code","Family_name","Family_sub1","family_sub_name") VALUES ('FBRU','Brush','FB','Brush')
-- INSERT INTO dw."C09_PurchasingFamilies" ("Family_code","Family_name","Family_sub1","family_sub_name") VALUES ('FHAR','Harness','FH','Harness')

-- once the table C09 completed, creating the foreign key from T01 to C09


ALTER TABLE dw."T01_References"
  ADD CONSTRAINT "C09_purch_fam_fk" FOREIGN KEY ("Segment_code") REFERENCES dw."C09_PurchasingFamilies" ("Family_code")
   ON UPDATE NO ACTION ON DELETE NO ACTION;
CREATE INDEX "fki_C09_purch_fam_fk"
  ON dw."T01_References"("Segment_code");
