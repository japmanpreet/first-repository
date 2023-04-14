* question 1: created library called home that points to home folder in SAS studio;
* question 2;
data university_rankings_2022;
input rank uni $ city $ state $ tuition_fees;
datalines;
1 Princeton Princeton NJ 56010
2 Harvard Cambridge MA 55587
2 MIT Cambridge MA 55878
4 Yale NewHaven CT 59950
5 Stanford Stanford CA 56169
;
run;

proc print noobs label;
label rank='US News Rank (2022)'
uni='University'
city='City'
state='State'
tuition_fees='Tuiton and Fees';
run;
*As we can see from the results, some city names are shortened
since they cannot fit within the width constraints of the table;

* question 3;
proc print data=data1.military noobs label;
var state type airport awards;
where state='CA' and type='Naval';
label type='Military Branch';
sum awards;
run;

