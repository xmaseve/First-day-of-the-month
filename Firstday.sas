data two;
lastmth = INTNX( 'month', date(), -1, 'begin' );
lastmonth = put(INTNX( 'month', date(), -1, 'begin' ),date9.);
lastyear = put(intnx('year', lastmth, -1,'s'), date9.);
month = propcase(substr(lastmonth,3,3));
tablename1 = strip(substr(lastmonth,3));
tablename2 = strip(substr(lastyear,3));
lastmonth_string = "'"||lastmonth||"'";
lastyear_string = "'"||lastyear||"'";
month_string = "'"||month||"'";
*tablename1_string = "'"||tablename1||"'";
*tablename2_string = "'"||tablename2||"'";
call symput("lastmth",lastmonth_string);
call symput("lastyr",lastyear_string);
call symput("mon",month_string);
call symput("lastmth_table",tablename1);
call symput("lastyr_table",tablename2);
run;

%put &lastmth;
%put &lastyr;
%put &mon;
%put sumr_enrllmnts&lastmth_table;

proc print data=two;run;


