import Control.Exception (evaluate)
import Test.Hspec
import Test.QuickCheck

import KthElement

main :: IO ()
main = hspec $ do
    describe "My But Last" $ do
        it "returns the kth element of a list of integers" $ do
            KthElement.elementAt [1..10] 3 `shouldBe` (3 :: Int)

        it "returns the second last element of a list of chars" $ do
            KthElement.elementAt "haskell" 3 `shouldBe` ('s' :: Char)

        it "throws error when k is greater than list length" $ do
            evaluate (KthElement.elementAt "haskell" 13) `shouldThrow` anyException

        it "returns the kth element of a list of infinite integers" $ do
            KthElement.elementAt [1..] 3 `shouldBe` (3 :: Int)

