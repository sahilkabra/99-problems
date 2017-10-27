-- #problem/3
-- Find the kth element of a list starting with 1 eg: elementAt [1, 2, 3] 2 -> 2

module KthElement where

elementAt :: [a] -> Int -> a
elementAt [] _ = error "Cannot find element for an empty list"
elementAt (x:xs) k
    | k == 1 = x
    | otherwise = elementAt xs (k - 1)
