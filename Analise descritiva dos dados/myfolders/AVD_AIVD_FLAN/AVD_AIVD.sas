FILENAME REFFILE '/folders/myfolders/AVD_AIVD_FLAN/AVD_AIVD.xlsx';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLSX
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;

DATA DADOS;
    SET WORK.IMPORT;
    KEEP AIVD AVD SEXO TRABALHA APOSENTADO HIPERTENSAO DIABETE CARDIACA TIREOIDE OSTEOPOROSE DEPRESSAO COLESTEROL ALZHEIMER ESTADO_CIVIL_COD IMC_COD IDADE_COD RENDA_COD ESCOLARIDADE_COD;
    IF (REC=1) THEN OUTPUT;
RUN;

PROC FREQ DATA=dados;
RUN;

proc freq data=DADOS;
tables avd*sexo / chisq;
run;
proc freq data=DADOS;
tables aivd*sexo / chisq;
run;
proc freq data=DADOS;
tables avd*trabalha / chisq;
run;
proc freq data=DADOS;
tables aivd*trabalha / chisq;
run;
proc freq data=DADOS;
tables avd*aposentado / chisq;
run;
proc freq data=DADOS;
tables aivd*aposentado / chisq;
run;
proc freq data=DADOS;
tables avd*hipertensao / chisq;
run;
proc freq data=DADOS;
tables aivd*hipertensao / chisq;
run;
proc freq data=DADOS;
tables avd*cardiaca / chisq;
run;
proc freq data=DADOS;
tables aivd*cardiaca / chisq;
run;
proc freq data=DADOS;
tables avd*diabete / chisq;
run;
proc freq data=DADOS;
tables aivd*diabete / chisq;
run;
proc freq data=DADOS;
tables avd*tireoide / chisq;
run;
proc freq data=DADOS;
tables aivd*tireoide / chisq;
run;
proc freq data=DADOS;
tables avd*alzheimer / chisq;
run;
proc freq data=DADOS;
tables aivd*alzheimer / chisq;
run;
proc freq data=DADOS;
tables avd*depressao / chisq;
run;
proc freq data=DADOS;
tables aivd*depressao / chisq;
run;
proc freq data=DADOS;
tables avd*osteoporose / chisq;
run;
proc freq data=DADOS;
tables aivd*osteoporose / chisq;
run;
proc freq data=DADOS;
tables avd*colesterol / chisq;
run;
proc freq data=DADOS;
tables aivd*colesterol / chisq;
run;
proc freq data=DADOS;
tables avd*estado_civil_cod / chisq;
run;
proc freq data=DADOS;
tables aivd*estado_civil_cod / chisq;
run;
proc freq data=DADOS;
tables avd*imc_cod / chisq;
run;
proc freq data=DADOS;
tables aivd*imc_cod / chisq;
run;
proc freq data=DADOS;
tables avd*idade_cod / chisq;
run;
proc freq data=DADOS;
tables aivd*idade_cod / chisq;
run;
proc freq data=DADOS;
tables avd*renda_cod / chisq;
run;
proc freq data=DADOS;
tables aivd*renda_cod / chisq;
run;
proc freq data=DADOS;
tables avd*escolaridade_cod / chisq;
run;
proc freq data=DADOS;
tables aivd*escolaridade_cod / chisq;
run;
DATA DADOS2;
    SET WORK.IMPORT;
    KEEP AVD AIVD IDADE RENDA IMC;
    IF (REC=1) THEN OUTPUT;
RUN;
proc sgplot data=DADOS2;
vbox IDADE/ category=AVD;
 run;
proc sgplot data=DADOS2;
vbox IDADE/ category=AIVD;
 run;
proc sgplot data=DADOS2;
vbox IMC/ category=AVD;
 run;
proc sgplot data=DADOS2;
vbox IMC/ category=AIVD;
 run;
proc sgplot data=DADOS2;
vbox RENDA/ category=AVD;
 run;
proc sgplot data=DADOS2;
vbox RENDA/ category=AIVD;
 run;