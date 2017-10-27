-- #problem/1
-- Find the last element of a list
module MyLast where

myLast :: [a] -> a
myLast = head . reverse

myLast' :: [a] -> a
myLast' [] = error "empty list does not have a last"
myLast' [x] = x
myLast' (_:xs) = myLast' xs
