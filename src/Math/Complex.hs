-- SPDX-FileCopyrightText: Copyright Preetham Gujjula
-- SPDX-License-Identifier: BSD-3-Clause

-- | Complex numbers, with alternative semantics to "Data.Complex".
module Math.Complex (Complex (..)) where

-- | A complex number type.
--
--   The complex number \(a + bi\) is represented by @a :+ b@.
data Complex a = !a :+ !a
  deriving (Eq)
