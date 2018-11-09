-- Create table emp_det

create table Emp_det

(
Empno number(4),
Ename varchar2(15),
Job varchar2(15),
Mgr number(4),
Hiredate Timestamp,
Sal number(6,2),
Comm number(6,2),Ephoto BLOB,
Deptno number(2)
);

-- Create table student_det for storing Student Details
create table student_Det
(
StudNo number(4),
Fname varchar2(15),
Lname varchar2(20),
DOB date,
DOJ date,
Fees number(6,2),
Gender Char
);
insert into student_det values
(
1001,
'Thomas',
'SIEBEL',
'30-DEC-81',
'02-JAN-91',
3000,
'M'
);
insert into student_det
(StudNo,Fname,Lname,DOJ)values(1002,'JAN','SMITH','12-JAN-09');

insert into student_det
(StudNo,Fname,Lname,DOB,DOJ,Fees,Gender)values(1003,'RAMA',NULL,'12-JAN-81',NULL,3000,'M');

create table student
(
Student number(4),
Name clob,
DOB date,
DOJ date,
Fees number(8,2),
Gender Char
);

insert into student values(1001,user,'01-JAN-85',sysdate,2000,'M');

insert into student values(&Student,'&name','&DOB','&DOJ',&&Fees,'&Gender');

create table DEPT
(
DEPTNO number(2),
DNAME varchar2(14),
LOC varchar2(13)
);
create table EMP3(
EMPNO number(4),
&ENAME varchar2(10),
&&JOB varchar2(9),
MGR number(4),
HIREDATE date,
SAL number(7,2),
COMM number(7,2),
DEPTNO number(2)

);
create table SALGRADE(
GRADE number,
LOSAL number,
HISAL number
);



insert into DEPT values(10,'accounting','new york');
insert into DEPT values(20,'research','dallas');
insert into DEPT values(30,'sales','chicago');
insert into DEPT values(40,'operations','boston');

delete from DEPT where DEPTNO=20;

select * from DEPT;
delete from DEPT where DEPTNO=20;

insert into EMP values(7369,'smith','clerk',7902,'17-DEC-80',800,null,20);
insert into EMP values(7499,'allen','salesman',7698,'20-FEB-81',1600,300,30);
insert into EMP values(7521,'ward','salesman',7698,'22-FEB-81',1250,500,30);
insert into EMP values(7566,'jones','manager',7839,'02-APR-81',2975,null,20);
insert into EMP values(7654,'martin','salesman',7698,'28-SEP-81',1250,1400,30);
insert into EMP values(7698,'blake','manager',7839,'01-MAY-81',2850,null,30);
insert into EMP values(7782,'clark','manager',7839,'09-JUN-81',2450,null,10);
insert into EMP values(7788,'scott','analyst',7566,'09-DEC-82',3000,null,20);
insert into EMP values(7839,'king','president',null,'17-NOV-81',5000,null,10);
insert into EMP values(7844,'turner','salesman',7698,'08-SEP-81',1500,0,,30);
insert into EMP values(7876,'adams','clerk',7788,'12-JAN-83',1100,null,20);
insert into EMP values(7900,'james','clerk',7698,'03-DEC-81',950,null,30);
insert into EMP values(7902,'ford','analyst',7566,'03-DEC-81',3000,null,20);
insert into EMP values(7934,'miller','clerk',7782,'23-JAN-82',1300,null,10);

select*from emp;
delete from EMP;

insert into EMP values(7369,'smith','clerk',7902,'17-DEC-80',800,null,20);
insert into EMP values(7499,'allen','salesman',7698,'20-FEB-81',1600,300,30);
insert into EMP values(7521,'ward','salesman',7698,'22-FEB-81',1250,500,30);
insert into EMP values(7566,'jones','manager',7839,'02-APR-81',2975,null,20);
insert into EMP values(7654,'martin','salesman',7698,'28-SEP-81',1250,1400,30);
insert into EMP values(7698,'blake','manager',7839,'01-MAY-81',2850,null,30);
insert into EMP values(7782,'clark','manager',7839,'09-JUN-81',2450,null,10);
insert into EMP values(7788,'scott','analyst',7566,'09-DEC-82',3000,null,20);
insert into EMP values(7839,'king','president',null,'17-NOV-81',5000,null,10);
insert into EMP values(7844,'turner','salesman',7698,'08-SEP-81',1500,0,30);
insert into EMP values(7876,'adams','clerk',7788,'12-JAN-83',1100,null,20);
insert into EMP values(7900,'james','clerk',7698,'03-DEC-81',950,null,30);
insert into EMP values(7902,'ford','analyst',7566,'03-DEC-81',3000,null,20);
insert into EMP values(7934,'miller','clerk',7782,'23-JAN-82',1300,null,10);

delete from EMP;
select*from EMP;

insert into SALGRADE values(1,700,1200);
insert into SALGRADE values(2,1201,1400);
insert into SALGRADE values(2,1401,2000);
insert into SALGRADE values(4,2001,3000);
insert into SALGRADE values(5,3001,9999);

select nvl(100,200) from dual;

select ename,sal,comm,sal+nvl(comm,0)from emp;

select empno, job,nvl(comm,0) from emp;
select nvl(100,200) from emp;

drop table EMP1;
drop table EMP2;
drop table EMP3;

select*from emp;
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------08/31/2018--------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

--performing nvl and nvl2 operations using the select function
select empno, job,nvl(comm,0) from emp;
select nvl(100,200) from emp;
select nvl2(100,200,300)from emp;
select nvl2(null,100,300) from emp;
select nvl2(comm,0,100)from emp;
select sal,comm,sal+nvl2(comm,100,1000)from emp;
select ename,sal,comm,nvl2(comm,'sal+com','sal')from emp;

--performig nullif operations on the emp table

select nullif(100,200)from dual;
select nullif(100,100) from dual;
select length(ename) from emp;
select length(job)from emp;
select nullif(length(ename),length(job))from emp;


select coalesce(100,200,600)from dual;
select coalesce(null,600,200) from dual;
select coalesce(null,'String',300) from dual;--Cannot give different datatypes
select coalesce(null,'String','Apple') from dual;--It works for Strings too but all parameters should be of the same datatype

--alisasing column names using the as keyword

select 
grade "salgrade",
hisal AS "high salary range",
losal AS "low salary range" 
from salgrade;

--using concatination operators
select empno||ename from emp;
select 'the basic salary of '||ename||' is Rs '||sal from emp;
select empno||':'||ename||',designation is '||job"employees information " from emp;

--using distinct keyword

select distinct job from emp;
select distinct job, deptno from emp;
select distinct deptno,job from emp;

--logical operators
select ename,sal,job from emp where (sal>=1500 AND sal<=5000) and job='manager';
select empno,ename,sal,deptno from emp where sal>=2000 or deptno=20;
select empno,ename,job,hiredate from emp where job='manager' or deptno=30;
select empno,ename,job,hiredate from emp where (job='clerk' or job='salesman' or job='analyst');

--combination of AND and OR operators

select ename,sal from emp where (job='clerk' or job='salesman' or job='manager') and sal>1000;

--not operator

select ename from emp where not ename='smith';
select * from emp where not sal>=5000;
select empno, ename,job,hiredate from emp where not hiredate='17-DEC-80';

--few tricky things using logical operators
select ename,sal, job from emp where job>'clerk';
select ename,sal, job from emp where job<'clerk';
select ename,sal, job from emp where job^='clerk';
select ename,sal, job from emp where job!='clerk';
select ename,sal, job from emp where not job!='clerk';
select ename,sal, job from emp where not job='clerk';

--between and not between
select empno,ename,comm from emp where comm between 500 and 1000;
select ename,sal,job from emp where sal not between 1000 and 1500;
select ename,sal,job from emp where job between 'manager' and 'salesman';
select ename,sal,job from emp where job not between 'manager' and 'salesman';

--in operators
select ename, sal, job from emp where ename in('ford','smith');
select ename,sal,job from emp where ename not in('ford','smith');
select empno, sal,deptno from emp where hiredate in ('20-FEB-1981','09-JUN-1981');
select empno, sal,deptno from emp where hiredate not in ('20-FEB-1981','09-JUN-1981');

--like and not like operator

select empno, ename from emp where ename like 'm%';
select empno, ename from emp where ename  not like 'm%';
select empno, ename from emp where ename like '_o%';
select empno, ename from emp where ename like 'sm%';
select * from emp where hiredate like '%JAN%';

--is null and is not null operators
 
select ename, deptno, comm from emp where comm is null;
select ename, deptno, comm from emp where mgr is null;
select ename, deptno, comm from emp where comm is not null;
select ename, deptno, comm from emp where mgr is not null;

--order by clause

select ename,job,sal, deptno from emp order by sal;
select ename,job,sal, deptno from emp order by sal desc;
select ename,job,sal,deptno from emp where job='clerk' order by sal;
select ename,job,sal,deptno from emp where sal>2000 order by deptno,ename desc;
select ename,job,sal,deptno from emp where sal>2000 order by deptno desc,ename desc;

--charecter functions
--lower functions
select lower('NARESH I TECH')from dual;
select ename,job,lower('MY DATA') from emp;
select ename,lower(ename) from emp where deptno=10;
select 'the '||ename||'''s destination is '|| job from emp where lower(job)='manager';
--upper functions
select empno, upper(ename),upper(job) from emp where deptno=20;
select upper(ename),empno,job from emp where lower(job)='manager';

--initcap function
select initcap (ename ) from emp;
select ename,upper(ename),initcap(ename) from emp;

--concat functions
select ename,job,concat(ename,job) from emp;
select concat(concat(ename,job),sal) from emp;
select concat('the employee name is ',initcap(ename)) as "employee names" from emp;
select concat('&Fname','&Sname')"full name" from dual;

--substrings
select substr('varun reddy',1,4) from dual;
------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------09-01-2018---------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

--instring functions

select instr('SIVA RAMA KRISHNA','A',1,1) from dual;
select instr('SIVA RAMA KRISHNA','A',1,2) from dual;
select instr(job,'A',1,2) from emp where job='manager';
SELECT INSTR('CORPORATE FLOOR','OR', -4, 1) "Instring" FROM DUAL;
select distinct job from emp where instr(job,'a',1,1)>0;
select distinct job from emp where instr(job,'a',1,1)=0;

--L pad functions

select lpad('page 1',10,'$') from dual;
select lpad('page 1',10) from dual;
select lpad(ename,20,'#') from emp where deptno=10;

--R pad functions

select rpad(ename,10,'#') from emp where deptno=20;
select rpad('page 1',10,'$') from dual;

--L trim function & R trim function

select ltrim('xxxyORACLE','xx') from dual; --just keep trying different combinations of charecters until you get the desired result
select rtrim('oraclexxyy','xy') from dual;
select rtrim('oraclexxyy      ') from dual;

--trim function

select trim('s' from 'mithss') from dual;
select trim('s' from 'ssmith') from dual;
select trim('s' from 'ssmithss') from dual;
select trim(leading 's' from 'ssmithss') from dual;
select trim(trailing 's' from 'ssmithss') from dual;
select trim(both 's' from 'ssmithss') from dual;

--replace function

select replace('led','l','r') from dual;
select ename,replace(job,'man','dam') from emp where job='manager';
select job,replace(job,'p') from emp where job='president';
select job, replace(job,'man',' executive') from emp where job='salesman';

--translate functions

select translate (job,'p','') from emp where job='president';
select translate (job,'mn','dm') from emp where job='manager';
select job, translate(job,'a','o') from emp where job='salesman';
select translate('led','le','r')from dual;

--CHR function
select chr(75)||chr(82)||chr(73)||chr(83)||chr(72)||chr(78)||chr(65) from dual;

--ASCII function
select ascii('A') from dual;
select ename, ascii(ename) from emp;
select ascii('smith') from dual;
select ascii('&name') from dual;

--number functions--
--round functions
select round(12.78456,3) from dual;
select round(919.637,-2)from dual;

--truncate functions
select trunc(19.637,1) from dual;
select trunc(19.637,2) from dual;
select trunc(73.67456,3) from dual;

--ceil function
select ceil(19.32) from dual;
select ceil(20.01) from dual;

--floor function
select floor(19.32) from dual;
select floor(20.90) from dual;

--modulus function

select mod(100,10) from dual;
select mod(17,4) from dual;

--power function
select power(5,2) from dual;
select power(-5,2) from dual;
select power(5,-2) from dual;

--square function
select sqrt(25) from dual;

--absolute function

select abs(-100) from dual;
select sal, comm,sal-comm,abs(sal-comm) from emp;

--sign function
select sign(-10), sign(10), sign(0) from dual;
select sal, comm, sign(sal-comm), abs(sal-comm) from emp where sign(sal-comm)=-1;

--date functions

select sysdate from dual;
select sysdate, sysdate+10 from dual;
select sysdate,sysdate+48/24 from dual;
select ename,hiredate, hiredate+10 from emp;
select ename,hiredate,hiredate-5 from emp;
select ename,hiredate, sysdate-hiredate from emp;
select ename,round((sysdate-hiredate)/7) from emp;
select ename,round((sysdate-hiredate)/365) as "years of experience" from emp;

--add months function
select sysdate, add_months(sysdate,1) from dual;
select sysdate, add_months(sysdate,2) from dual;
select sysdate, add_months(sysdate,-2) from dual;

--months between function
select ename, hiredate,round((months_between(sysdate, hiredate))) from emp;
select ename, hiredate,months_between(sysdate,hiredate) from emp where months_between(sysdate,hiredate)>320;

--next day function
select sysdate,next_day(sysdate,'wed') from dual;
select sal, hiredate, next_day(hiredate,'monday') from emp;

--last day function
select sysdate, last_day(sysdate) from emp;
select last_day(sysdate)-sysdate "No of days left in this month" from dual;

------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------09-02-2018--------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
--rounding of dates
select round(sysdate,'day') from dual;
select round(sysdate,'month') from dual;
select round(sysdate,'year') from dual;

--truncating dates
select round(sysdate,'day'), trunc(sysdate,'day') from dual;
select round(sysdate,'month'), trunc(sysdate,'month') from dual;
select round(sysdate,'year'), trunc(sysdate,'year') from dual;

--to char functions
--on date
select hiredate, to_char(hiredate,'day') from emp;
select hiredate,to_char(hiredate,'month') from emp;
select hiredate, to_char(hiredate,'year') from emp;

select hiredate, to_char(hiredate,'d') from emp;
select hiredate, to_char(hiredate,'dd') from emp;
select hiredate,to_char(hiredate,'ddd') from emp;

select hiredate,to_char(hiredate,'mm') from emp;
select hiredate,to_char(hiredate,'mon') from emp;
select hiredate,to_char(hiredate,'month') from emp;

select hiredate,to_char(hiredate,'yy') from emp;
select hiredate,to_char(hiredate,'yyyy') from emp;

select hiredate, to_char(hiredate,'dd-mm-yyyy') from emp;
select hiredate, to_char(hiredate,'mm-dd-yy') from emp;
select hiredate,to_char(hiredate,'day-month-year') from emp;
select hiredate, to_char(hiredate,'day-mon-year') from emp;
select hiredate, to_char(hiredate,'mm-dd-yy:hh:mi:ss') from emp;
select hiredate, to_char(sysdate,'mm-dd-yy:hh:mi:ss') from emp;

--on numbers
select sal, to_char(sal,'9,99,999') from emp;
select sal, to_char(sal,'$9,99,999.000') from emp;

--decimal indicators
select 1234, to_char(1234,'9999D99') from dual;
select 1234, to_char(1234,'999D99') from dual;
select to_char(comm,'9999D99') from emp;

--scientific notation indicator
select to_char(5634,'9.9eeee') from dual;

--group separator
select to_char(1234567,'99g99g9999') from dual;
select sal, to_char(sal,'99g999') from emp;

--locale current indicator
select 1234,to_char(1234,'l9999') from dual;
select 1234,to_char(123,'l99999') from dual;
select sal, to_char(sal,'99g999l','nls_currency=IndRupees') from emp;

--trailing minus indicator
select -1000, to_char(-1000,'l99g999d99mi') from dual;
select sal,comm,comm-sal,to_char(comm-sal,'l99g999d99mi') from emp;

--negative number indicator
select to_char(-1000,'l99g999d99pr') from dual;
select sal,comm,comm-sal,to_char(comm-sal,'l9999pr') from emp;

--roman number indicator
select 12, to_char(12,'RN'), to_char(12,'rn') from dual;

--sign indicators
select 1000, to_char(1000,'s9999'), to_char(-1000,'s9999') from dual;
select 1000, to_char(1000,'9999s'), to_char(-1000,'9999s') from dual;

--hexadecimal indicator
select 2000, to_char(2000,'xxxx') from dual;
select ename,sal,to_char(sal,'xxxx') from emp;

--meridian indicator
select sysdate,to_char(sysdate,'AM'),to_char(sysdate,'PM') from dual;

--century indicator
select sysdate,to_char(sysdate,'CC-AD') from dual; 

select ename,vsize(ename) from emp;

select count(empno) from emp group by deptno;

select deptno from emp group by deptno;

select job from emp group by job;

select count(*) from emp;

select count(empno) from emp;

select variance(sal), variance(distinct sal) from emp;

select stddev(789) from dual;

select stddev(43) from dual;

select stddev(sal),stddev(distinct sal) from emp;

select min(ename) from emp;

select min(sal), min(distinct sal) from emp;

select max(ename) from emp;

select max(comm), max(distinct comm) from emp;

select sum(sal), sum(distinct sal) from emp;

select avg(comm),avg(distinct comm) from emp;

select avg(sal),avg(distinct sal) from emp;

select ename,to_char(hiredate,'FMmonth-dd-yyyy') from emp where deptno=20;

select ename,to_char(hiredate,'fmmonth-dd-yyyy') from emp where deptno=20;

select to_char(hiredate,'month-dd-year') from emp;

select ename,nvl(to_char(comm),'not applicable') from emp where deptno=30;

select next_day(sysdate,'friday') from dual;

select next_day(sysdate,'tuesday') from dual;

select next_day('15-MAR-1998','tuesday') from dual;

select to_char(add_months(last_day(hiredate),5),'dd-mon-yyyy') from emp where empno=7788;

select round(sysdate,'month'), trunc(sysdate,'month') from dual;

select round(sysdate,'year'), trunc(sysdate,'year') from dual;

select trunc(to_date('27-OCT-92','dd-mon-yy'),'year') from dual;

select round(sysdate,'day') from dual;

select concat(concat(ename,' is a '),job) designation from emp where deptno=20;

select concat(concat(ename,'is a '),job) designation from emp where deptno=20;

select to_char(add_months(hiredate,1),'dd-mon-yyyy')"next month" from emp where empno=7788;

select to_date(10,'dd') from dual;

select to_date(10,'ddd') from dual;

select to_date(100,'j') from dual;

select to_date('12-JANUARY-1980') from dual;

select ename, hiredate, add_months(to_date('1980-DECEMBER-17','yyyy-month-dd'),3) from emp where hiredate='17-DEC-1980';

select to_date('12-JAN-1980') from dual;

select to_char(to_date('12-JAN-1980'),'ddsp') from dual;

select to_date(sysdate) from dual;

select to_date(sysdate,'dd-mm-yyyy') from dual;

select sysdate,to_char (sysdate,'ddthsp-month-year') from dual;

select sysdate,to_char (sysdate,'day-month-year') from dual;

select sysdate,to_char (sysdate,'ddth-month-year') from dual;

select to_char(to_date('12-JAN-1980'),'DDSP') from dual;

select '$10,000.00', to_number('$10,000.00','l99,999.99')+500 from dual;

select '$10,000.00' ,to_number('$10,000.00','l99,999.99') from dual;
-------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------09-22-2018--------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------
create table branch_mstr
(
    branch_no varchar2(10) constraint branchno_NN not null,
    name varchar2(20) constraint name_NN not null
);
create table Brench_mstr
(
    name varchar(10) constraint name_ns not null, 
    id number(10) constraint id_unq unique
);

create table product_master
(
    product_no varchar2(6),
    des varchar2(25),
    qty_on_hand number(8),
    constraint prono_unq unique(product_no)
);

create table fz_spdnote
(
    fz_no varchar2(10),
    sp_no varchar2(10),
    empno number(10),
    constraint fzsp_unq unique(fz_no,sp_no)
);
create table incr
(
    incrid number(4) constraint incr_id_pk primary key,
    incrdate date not null,
    incramnt number(8,2) not nse;
    
select next_day(sysdate,'monday') from dual;

-------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------09-25-2018--------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------
create table product_maste
(
    product_no varchar(6),
    des varchar2(25),
    qty_on_hand number(8),
    constraint prono_pk primary key (product_no)
);

create table salesDet
(
    prodno number(8),
    custid number(8),
    salesDate date not null,
    salesdesc varchar2(20) not null,
    constraint prod_cust_pk primary key(prodno,custid)
);

------------------------------------------------------------------------
create table deptt
(
    deptno number(2) constraint deptno_pk primary key,
    dname varchar2(2) constraint dname_nn not null,
    loc varchar2(20) constraint loc_nn not null
);

create table empp
(
    empno number(4) constraint empno_pk primary key,
    ename varchar2(20) constraint ename_nn not null,
    job varchar2(15) constraint job_nn not null,
    mgr number(4) constraint mgr_fk_self references empp(empno) on delete,
    hiredate date constraint hiredate_nn not null,
    sal number(8,2) constraint sal_nn not null,
    comm number(8,2),
    deptno number constraint deptno_fk references deptt(deptno) on delete cascade
);


---------------------------------------------------------------------------------------------
create table fz_srv_item
(
    fzno varchar2(20) constraint fzno_pk primary key,
    fztype varchar2(20) constraint fztype_nn not null,
    rdate date constraint rdate_nn not null
);
create table fz_sp_item
(
    fzspno varchar2(20) constraint fzspnp_pk primary key,
    fzsptype varchar2(20) constraint fzsptype_nn not null,
    rspdate date constraint rspdate_nn not null
);

create table fz_dnote_item
(
    fznoref varchar2(20) constraint fznoref_fk references fz_srv_item(fzno),
    fzspnoref varchar2(20) constraint fzspnoref_fk references fz_sp_item,
    dndate date ,
    constraint fzref_comp_pk primary key(fznoref, fzspnoref)
);

create table depttt
(
    deptno number(2) constraint dno_pk primary key constraint deptno_chk check(deptno between 10 and 99),
    dname varchar2(15) constraint dname_nnn not null constraint dname_chk check(dname=upper(dname)),
    loc varchar2(15) default 'new york' constraint loc_chk check(loc in('new york','dallas','boston','chicago'))
);

create table emppp
(
    empno number(4) constraint empppno_pk primary key,
    ename varchar2(20) constraint eename_nn not null check((substr(ename,1,1) between 'a' and 'z') and (ename=upper(ename)),
    job varchar2(15) constraint job_chk check(job in('analyst','clerk','manager','president','salesman')),
    hiredate date default sysdate,
    sal number(8,2) constraint sal_nn not null constraint chk_sal check(sal between 1000 and 10000),
    comm number(8,2),
    deptno number(2),
    constraint tot_sal_chk check(sal+comm<=100000)
);

alter table emp add constraint emppno_pk primary key(empno);
alter table emp add constraint emp_mgr_fk foreign key(mgr) references emp(empno);
alter table emp add constraint dept_no_fk foreign key(deptno) references dept modify(deptno not null);--doubt--
alter table emp modify empno number(3) constraint empno_nn not null;--not executing--
alter table emp modify hiredate date default sysdate;


alter table empp disable primary key;
alter table deptt disable unique(dname);

alter table empp disable constraint empno_pk cascade;

alter table empp enable constraint empno_pk;

select owner, constraint_name, constraint_type from user_constraints where table_name='fz_srv_item';




--equi joins--
select
    empp.empno,
    empp.ename,
    empp.deptno,
    deptt.deptno,
    deptt.dname,
    deptt.loc
    from empp,deptt
    where empp.deptno=deptt.deptno;

select empno,ename,emp.deptno, dname
from emp, dept
where emp.deptno=dept.deptno
 and empno=&eno;

select 
    empno,ename,job,emp.deptno,dname,loc
from    
    emp, dept
where
    emp.deptno=dept.deptno
and job='clerk';

select * from emp;
select * from dept;

select empno,ename,sal*12 as annualSal,emp.deptno,loc
from emp,dept
where emp.deptno=dept.deptno and dname='sales';

select e.empno,e.ename,d.deptno,d.dname
from emp e, dept d
where e.deptno=d.deptno;

select e.empno,e.ename,e.job,d.deptno,d.dname
from emp e, dept d
where e.deptno=d.deptno
and e.job in ('manager','salesman');

select e.empno,e.ename,e.job, d.deptno,d.dname
from emp e, dept d
where e.deptno=d.deptno and e.job<>'clerk';

---non equi joins--
select e.empno,e.ename,e.sal,s.grade,s.losal,s.hisal
from emp e, salgrade s
where e.sal between s.losal and s.hisal;

select * from emp;

select e.empno,e.ename,e.sal,s.grade,s.losal,s.hisal
from emp e, salgrade s
where e.empno=&eno
and e.sal between s.losal and s.hisal;

select e.empno,e.ename,e.sal,s.grade
from emp e, salgrade s
where (e.sal>=s.losal and e.sal<=s.hisal) and s.grade=1;

--self joins--
select e.ename"emp name",m.ename"manager name"
from emp e, emp m
where e.mgr=m.empno;

select e.ename "emp name", m.ename "manager" 
from emp e, emp m
where e.mgr=m.empno
and e.hiredate<m.hiredate;

select* from emp;

select e.ename || ' emp name', m.ename "manager name"
from emp e, emp m
where e.mgr=m.empno;

select e.ename ||' works for', m.ename
from emp e, emp m
where e.mgr=m.empno;

select ename,job,dname
from emp,dept;

--outer joins--
select e.ename,d.deptno,d.dname
from emp e,dept d
where e.deptno(+)=d.deptno
order by e.deptno;

select e.ename,d.deptno,d.dname
from emp e, dept d
where e.deptno=d.deptno(+)
order by e.deptno;

select e.ename,m.ename
from emp e, emp m
where e.mgr=m.empno;

select e.ename,e.deptno,m.ename,m.deptno
from emp e, dept d, emp m
where e.mgr=m.empno and e.deptno =d.deptno;

--cross joins--
select ename,dept.deptno,dname,loc
from emp cross join dept
where emp.deptno=dept.deptno;

---natural joins--
select empno,ename,sal,deptno,dname,loc
from emp natural join dept;--natural joins are nothing but inner joins or equi joins



---subqueries--
select empno,ename,sal,deptno from emp
where sal<(select sal from emp where empno=7566);

select empno,ename,job, sal from emp 
where job=(select job from emp where ename='miller') order by sal;

select empno,ename,job from emp 
where job=(select job from emp where ename='ford' and ename=lower('ford'));

select empno,ename,sal,job from emp 
where deptno=(select deptno from dept where dname='sales');

select empno,ename,sal,job from emp 
where deptno=(select deptno from dept where loc='new york') and job='clerk';

select empno,ename,sal,job from emp 
where deptno=(select deptno from dept where dname='sales');

select empno,ename,sal,comm,sal+nvl(comm,0) from emp 
where deptno=(select deptno from dept where loc='chicago');

select * from emp 
where deptno=(select deptno from emp
where ename='ford') and
job in (select job from emp 
where deptno=(select deptno from dept 
where dname='sales'));

select ename,job,sal from emp 
where sal=(select max(sal) from emp);

select ename,job,sal from emp 
where sal=(select min(sal) from emp);

select ename,job,sal from emp 
where sal>(select avg(sal) from emp);

select ename,job,sal from emp 
where sal<(select variance(sal) from emp);

select deptno, min(sal) from emp 
group by deptno
having min(sal)>(select min(sal) from emp 
where deptno=20 );

select job, avg(sal) from emp 
group by job
having avg(sal)=(select min(avg(sal)) from emp 
group by job );

select job,avg(sal) from emp 
group by job 
having avg(sal)<(select max(avg(sal)) from emp 
group by job);

select ename,sal,deptno from emp 
where sal in (select max(sal) from emp 
group by deptno);
select max(sal), deptno from emp 
group by deptno;

select ename, sal, job, deptno from emp 
where sal in (select max(sal) from emp 
group by job);

select ename, sal, deptno from emp 
where sal in (select min(sal) from emp 
group by deptno );

select ename, sal, deptno from emp 
where sal<some(1250,1500,1600);

select ename, sal, deptno from emp 
where sal<some(select sal from emp 
where job='salesman');

select ename, sal, deptno job from emp 
where sal<any(select sal from emp where deptno in(20,30) 
and job<>'manager');

select empno,ename,sal,deptno from emp 
where sal>any(select sal from emp 
where deptno=10);

select ename,sal, deptno from emp 
where sal>some(1250,1500,1600);

select ename, sal, deptno from emp 
where sal>any(select sal from emp 
where job='salesman');

select ename,job,deptno from emp 
where sal=any(select sal from emp 
where job='salesman');

select ename,job, sal from emp 
where sal>all(select sal from emp where deptno=30);

select ename, job, sal deptno from emp 
where sal>all(select avg(sal) from emp 
group by deptno);

select ename, job,sal, deptno from emp 
where sal>all(select avg(sal) from emp 
group by deptno);

select ename, sal, deptno from emp 
where (deptno, sal)in(select deptno,max(sal) from emp 
group by deptno)and deptno<>10;

select ename,sal,deptno from emp where deptno in(select deptno from emp 
group by deptno) and sal in (select max(sal) 
from emp 
group by deptno) and deptno<>10;

select e.ename from emp e 
where e.empno in (select m.mgr from emp m);


select deptno, dname from dept d where exists(select * from emp e where d.deptno=e.deptno);
 
select deptno,dname from dept d where not exists(select * from emp e where d.deptno=e.deptno);

select p.ename from emp p where exists (select * from emp c where c.empno=p.mgr);

select * from emp c, emp p where c.empno=p.mgr;

