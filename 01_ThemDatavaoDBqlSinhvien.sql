use qlsinhvien;
insert into class values (1,'A1','2018-12-20',1);
insert into class values (2,'A2','2018-12-22',1);
insert into class values (3,'B3',current_date(),0);
insert into student (studentname, address, phone, status, classid) 
values ('Hung','Ha noi','0912113113',1,1);
insert into student (studentname, address, status, classid)
values ('Hoa', 'Hai phong', 1, 1);
insert into student (studentname, address, phone, status, classid)
values ('Manh', 'HCM', '0123123123',0,2);
insert into subject 
values (1, 'CF', 5, 1),
(2, 'C', 6, 1),
(3, 'HDJ', 5, 1),
(4, 'RDBMS', 10, 1);
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);