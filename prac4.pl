phone_list(person('Yug','Dave'), '8469655400', bdate(day(20),month(07),year(2002))).
phone_list(person('Raj','Chauhan'), '9324729475', bdate(day(27),month(02),year(2002))).
phone_list(person('Dhruv','Ambaliya'), '9372648463', bdate(day(02),month(08),year(2001))).
phone_list(person('Mitul','Chavda'), '7839237592', bdate(day(19),month(01),year(2002))).
phone_list(person('Abc','abc'), '4783593803', bdate(day(28),month(09),year(2002))).
phone_list(person('Def','def'), '8647384709', bdate(day(14),month(01),year(2004))).
phone_list(person('Ghi','ghi'), '9894372437', bdate(day(20),month(01),year(2002))).
phone_list(person('Jkl','jkl'), '8409456382', bdate(day(10),month(07),year(2002))).
phone_list(person('Xyz','Xyz'), '8573628467', bdate(day(30),month(09),year(2003))).
phone_list(person('Raj','Patel'),'9872437347',bdate(day(15),month(08),year(2002))).



query(X):- phone_list(person(A,_),B,bdate(day(_),month(X),year(_))),write(A),nl,write(B).



