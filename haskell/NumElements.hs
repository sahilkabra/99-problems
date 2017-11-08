-- #problem/4
-- Find the number of elements in a list

module NumElements where

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs
