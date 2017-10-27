import Test.Hspec
import Test.QuickCheck

import MyLast

main :: IO ()
main = hspec $ do
    describe "My Last" $ do
        it "returns the last element of a list of integers" $ do
            MyLast.myLast [1..10] `shouldBe` (10 :: Int)

        it "returns the last element of a list of string" $ do
            MyLast.myLast ["a", "b"] `shouldBe` ("b" :: String)

        it "returns the last element of list of 1 element" $ do
            MyLast.myLast ["a"] `shouldBe` ("a" :: String)

        it "throws error when passed a list of 0 elements" $ do
            MyLast.myLast [] `shouldThrow` anyException
