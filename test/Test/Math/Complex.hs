-- SPDX-FileCopyrightText: Copyright Preetham Gujjula
-- SPDX-License-Identifier: BSD-3-Clause

module Test.Math.Complex (tests) where

import Math.Complex ()
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))

tests :: TestTree
tests =
  testGroup
    "Math.Complex"
    [ placeholderTest
    ]

placeholderTest :: TestTree
placeholderTest = testCase "placeholder" ((1 :: Int) @?= 1)
