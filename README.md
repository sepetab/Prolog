# Basic Prolog Algorithms

Detailed information for all predicates in specification.pdf

## simple.pl

List processing and expression evaluation algorithms

### Usage Examples

```
 sumsq_even([1,3,5,2,-4,6,8,-7], Sum).     ->  Sum = 120
 log_table([1, 3.7, 5], Result).           ->  Result = [[1, 0.0], [3.7, 1.308332819650179], [5,1.6094379124341003]].
 paruns([8,0,4,3,7,2,-1,9,9], RunList).    ->  RunList = [[8, 0, 4], [3, 7], [2], [-1, 9, 9]]
 eval(add(1, mul(2, 3)), V).               ->  V = 7
 eval(div(add(1, mul(2, 3)), 2), V).       ->  V = 3.5      
 
```
## pronounResolution.pl

Code performs reference resolution by extending a definite clause grammer

### Usage Examples

```
% Cases that are implemented

run([john,lost,his,wallet], Refs).
Refs = [John].
run([john,lost,her,wallet], Refs).
false.
run([mary,lost,her,wallet], Refs).
Refs = [mary].
run([she,looked,for,it], Refs).
Refs = [mary, wallet].
abolish(history/1).                   % making sure the history has been reset for the next example.
run([mary,lost,her,wallet], Refs).
Refs = [mary].
run([he,looked,for,it], Refs).        % No male person in history
false.
run([john,looked,for,it], Refs).      % Now there is
Refs = [wallet].
run([he,found,it], Refs).
Refs = [john, wallet].

% Cases that can be extended (not implemented yet)

abolish(history/1).
run([mary,gave,the wallet,to,john], Refs).
Refs = [].
run([he,lost,it], Refs).
Refs = [john, wallet].
run([john,and,mary,looked,for,it], X).
Refs = [wallet].
run([they,found,it], Refs).
Refs = [[john, mary], wallet].
```
