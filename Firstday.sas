data two;
lastmth = INTNX( 'month', date(), -1, 'begin' );
lastmonth = put(INTNX( 'month', date(), -1, 'begin' ),date9.);
lastyear = put(intnx('year', lastmth, -1,'s'), date9.);
month = propcase(substr(lastmonth,3,3));
lastmonth_string = "'"||lastmonth||"'";
lastyear_string = "'"||lastyear||"'";
month_string = "'"||month||"'";
call symput("lastmth",lastmonth_string);
call symput("lastyr",lastyear_string);
call symput("mon",month_string);
run;

%put &lastmth;
%put &lastyr;
%put &mon;

proc print data=two;run;


