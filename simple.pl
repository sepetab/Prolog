
%Code written by Aravind Venkateswaran z5208102 COMP3411
% Q1 ---------------------------------------------------------------------------------------
even1(N):- mod(N,2) =:= 0.

sumsq_even([],0).

sumsq_even([Head|Tail],Sum):-

   	even1(Head),

    sumsq_even(Tail,Sum2),

    Sum is Head*Head + Sum2.

    

sumsq_even([Head|Tail],Sum):-

   	not(even1(Head)),

    sumsq_even(Tail,Sum2),

    Sum is Sum2.




    log_table([], []).

% Q2 --------------------------------------------------------------------------------------------------

log_table([Head|Tail], [[Head,'DNE']|Tail2]):-

	Head =< 0,

    log_table(Tail,Tail2).



log_table([Head|Tail], [[Head,X]|Tail2]):-

    Head >= 0,

	X is log(Head),

    log_table(Tail,Tail2).

% Q3 ------------------------------------------------------------------------------------------------------

even2(N1,N2):- 

    mod(N1,2) =:= 0,

    mod(N2,2) =:= 0.

 

 reverse([],Z,Z).

 

 reverse([H|T],Z,Acc) :- reverse(T,Z,[H|Acc]).

 

buildlist([],[Head2|Tail2],[X]):-

    reverse([Head2|Tail2],X,[]).

 

buildlist([Head|Tail],[],NL):-

    buildlist(Tail,[Head],NL).

 

buildlist([Head|Tail],[Head2|Tail2],NL):-

    even2(Head,Head2),

    buildlist(Tail,[Head,Head2|Tail2],NL).

 

buildlist([Head|Tail],[Head2|Tail2],NL):-

    even2(Head+1,Head2+1),

    buildlist(Tail,[Head,Head2|Tail2],NL).

 

buildlist([Head|Tail],[Head2|Tail2],[X|NL]):-

    reverse([Head2|Tail2],X,[]),

    buildlist([Head|Tail],[],NL).

 

 

paruns([],[]).

 

paruns([Head|Tail],NL):-

                buildlist([Head|Tail],[],NL).

% Q4 ---------------------------------------------------------------------------------------------------------------

eval(add(Expr,Expr2),Num):-

    eval(Expr,Num2),

    eval(Expr2,Num3),

    Num is Num2+Num3.

 

eval(sub(Expr,Expr2),Num):-

    eval(Expr,Num2),

    eval(Expr2,Num3),

    Num is Num2-Num3.

 

eval(div(Expr,Expr2),Num):-

    eval(Expr,Num2),

    eval(Expr2,Num3),

    Num is Num2/Num3.

 

eval(mul(Expr,Expr2),Num):-

    eval(Expr,Num2),

    eval(Expr2,Num3),

    Num is Num2*Num3.

 

 

eval(Number,Number).