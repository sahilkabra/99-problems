import Test.Hspec
import Test.QuickCheck

import NumElements

main :: IO ()
main = hspec $ do
    describe "Num Elements" $ do
        it "returns the number of elements in the list" $ do
            NumElements.myLength [1..10] `shouldBe` (10 :: Int)

        it "returns the number of elements for an empty list" $ do
            NumElements.myLength [] `shouldBe` (0 :: Int)

        it "returns the number of elements for a strin" $ do
            NumElements.myLength "Hello, world!" `shouldBe` (13 :: Int)
