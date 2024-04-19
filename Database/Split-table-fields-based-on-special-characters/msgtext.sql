create table msgtext (
    id number not null constraint msgtext_pk primary key,
    msg varchar2(255)
);
/


INSERT INTO msgtext VALUES (1, 'a=a1,b=b1,c=c3,d=d1');
INSERT INTO msgtext VALUES (2, 'a=a2,b=b2,c=c3,d=d2');
INSERT INTO msgtext VALUES (3, 'a=a3,b=b3,c=c3,d=d3');
INSERT INTO msgtext VALUES (4, 'a=a4,b=b4,c=c3,d=d4');
INSERT INTO msgtext VALUES (5, 'a=a5,b=b5,c=c5,d=d5,e=e5');
INSERT INTO msgtext VALUES (6, 'a=a6,b=b6,c=c6,d=d6,e=e6,f=f6');
INSERT INTO msgtext VALUES (7, 'b=b7,c=c7,d=d7,e=e7,f=f7');

select * from msgtext;



create or replace view msgtext_plus as
select t.*,
       f_index(t.msg, 'a') as a,
       f_index(t.msg, 'b') as b,
       f_index(t.msg, 'c') as c,
       f_index(t.msg, 'd') as d,
       f_index(t.msg, 'e') as e,
       f_index(t.msg, 'f') as f,
       f_index(t.msg, 'g') as g,
       instr(t.msg, 'a='),
       instr(t.msg, 'b='),
       instr(t.msg, 'c='),
       instr(t.msg, 'd='),
       instr(t.msg, 'e='),
       instr(t.msg, 'f='),
       instr(t.msg, 'g=')
from msgtext t;