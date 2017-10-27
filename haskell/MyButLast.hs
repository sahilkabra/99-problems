-- #problem/2
-- Find the second last element of a list
module MyButLast where

myButLast :: [a] -> a
myButLast []       = error "can't work on empty list"
myButLast [_]      = error "can't work on list of 1 item"
myButLast [x,_]    = x
myButLast ( _:xs ) = myButLast xs

myButLast' ( x:xs ) =
    if length xs == 1 then x
    else myButLast' xs
