# output_values(Last_value, Last_value) :- write(Last_value),nl,    
# output_values(First_value, Last_value) :- First_value =\= Last_value, write(First_value),  
#      nl,N is First_value+1, output_values(N,Last_value).  
     
     sumto(1, 1).
sumto(N, M) :- N>1, N1 is N-1, sumto(N1, M1), M is M1+N.

loop(0).  
loop(N) :- N>0, write('value of N is: '), write(N), nl,
S is N-1, loop(S).  



 
 
 

	

