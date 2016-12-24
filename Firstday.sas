data two;
lastmth = INTNX( 'month', date(), -1, 'begin' );
lastmonth = put(INTNX( 'month', date(), -1, 'begin' ),date9.);
lastyear = put(intnx('year', lastmth, -1,'s'), date9.);
month = propcase(substr(lastmonth,3,3));
month_string = "'"||lastmonth||"'";
year_string = "'"||lastyear||"'";
call symput("monthstring",month_string);
call symput("yearstring",year_string);
run;

%put &yearstring;
%put &monthstring;

proc print data=two;run;


