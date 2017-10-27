import Control.Exception (evaluate)
import Test.Hspec
import Test.QuickCheck

import MyButLast

main :: IO ()
main = hspec $ do
    describe "My But Last" $ do
        it "returns the second last element of a list of integers" $ do
            MyButLast.myButLast [1..10] `shouldBe` (9 :: Int)

        it "returns the second last element of a list of string" $ do
            MyButLast.myButLast ["a", "b", "c"] `shouldBe` ("b" :: String)

        it "returns the first element of list of 2 elements" $ do
            MyButLast.myButLast ["a", "b"] `shouldBe` ("a" :: String)

        it "throws error when passed a list of 1 elements" $ do
            evaluate (MyButLast.myButLast ["a"]) `shouldThrow` anyException

        it "throws error when passed a list of 0 elements" $ do
            MyButLast.myButLast [] `shouldThrow` anyException

        it "returns the second last element of a list of integers - another pattern" $ do
            MyButLast.myButLast' [1..10] `shouldBe` (9 :: Int)
