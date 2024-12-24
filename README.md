<!--
SPDX-FileCopyrightText: Copyright Preetham Gujjula
SPDX-License-Identifier: BSD-3-Clause
-->

# complex

An alternative implementation of complex numbers in Haskell

## Overview

The standard `Complex` data type from `Data.Complex` in base has a few major
drawbacks:
* No `Ord` instance
* No `Num` instance for types like `Complex Int`. (Instead, there is
  `RealFloat a => Num (Complex a)`).

This library provides an alternative implementation of Complex numbers that
addresses these deficiencies, and has a few other benefits:
* Flat representation for fixed-width types like `Complex Int` and
  `Complex Float`.
* Implementation of a wide variety of functions involving complex numbers.
