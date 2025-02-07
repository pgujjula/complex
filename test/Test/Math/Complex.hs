-- SPDX-FileCopyrightText: Copyright Preetham Gujjula
-- SPDX-License-Identifier: BSD-3-Clause

module Test.Math.Complex (tests) where

import Math.Complex (Complex ((:+)))
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (assertBool, testCase)

tests :: TestTree
tests =
  testGroup
    "Math.Complex"
    [ test_Eq
    ]

test_Eq :: TestTree
test_Eq =
  testCase "Eq instance" $ do
    let checkEqual :: (Eq a) => (Complex a, Complex a) -> IO ()
        checkEqual (x, y) = assertBool "found not equal" (x == y)

        checkUnequal :: (Eq a) => (Complex a, Complex a) -> IO ()
        checkUnequal (x, y) = assertBool "found equal" (x /= y)

    mapM_ checkEqual [((0 :: Int) :+ 0, 0 :+ 0), (3 :+ 4, 3 :+ 4)]
    mapM_
      checkUnequal
      [((0 :: Int) :+ 0, 1 :+ 0), ((-1) :+ 2, (-1) :+ 3), (3 :+ 4, 2 :+ 3)]
