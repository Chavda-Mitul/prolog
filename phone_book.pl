# % Define the phone list database with names, phone numbers, and birthdays
# phone_list("John", "555-1234", date(1990, 3, 15)).
# phone_list("Jane", "555-5678", date(1985, 4, 22)).
# phone_list("Bob", "555-2468", date(2023, 3, 21)).
# phone_list("Mary", "555-3690", date(1992, 3, 12)).

# % Define a rule to get the current month and year
# current_month_year(Month, Year) :-
#     get_time(Timestamp),
#     stamp_date_time(Timestamp, DateTime, local),
#     date_time_value(month, DateTime, Month),
#     date_time_value(year, DateTime, Year).

# % Define a rule to get a list of people whose birthdays are in the current month
# current_month_birthday_list(BirthdayList) :-
#     current_month_year(CurrentMonth, CurrentYear),
#     findall(Name, (phone_list(Name, _, Birthday), Birthday = date(CurrentYear, CurrentMonth, _)), BirthdayList).

% Define the phone list database with names, phone numbers, and birthdays
phone_list(person(dhruvrajsinh, gohil), '123456789', bdate(day(5), month(12), year(2002))).
phone_list(person(ravi, mishra), '123456789', bdate(day(5), month(11), year(2002))).
phone_list(person(shubh, patel), '123456798', bdate(day(4), month(10), year(2001))).
phone_list(person(rajsinh, gohil), '123475689', bdate(day(6), month(2), year(2002))).
phone_list(person(dhruvraj, gohil), '123457789', bdate(day(7), month(1), year(2003))).
phone_list(person(dhruv, gohil), '133456789', bdate(day(2), month(3), year(2001))).

% Print out the phone list data for a specific person
print_phone_list(Name) :-
    phone_list(person(Name, _), Number, Birthday),
    write('Name: '), write(Name), nl,
    write('Phone Number: '), write(Number), nl,
    write('Birthday: '), write(Birthday), nl.

# to run this print_phone_list(mitul).
