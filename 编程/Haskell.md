---
tags: [编程]
title: Haskell
created: '2020-01-06T14:03:58.137Z'
modified: '2020-01-06T14:09:43.365Z'
---

# Haskell

## if ... then ... else

## List

### [1] ++ [2,3,4] -> [1,2,3,4]

### 1:[2,3,4] -> [1,2,3,4]

### [1,2,3,4] !! 0 -> 1

### head, tail, last, init, length, null, reverse

### take 3 [1,2,3,4] -> [1,2,3]

### drop 3 [1,2,3,4] -> [4]

### maximum, sum, product

### 4 `elem` [1,2,3,4] -> True

### cycle, repeat, replicate

### [x*2 | x <- [1..10], x*2 >= 12]

## Tuple

### fst (1,2) -> 1

### snd (1,2) -> 2

### zip

## Type

### Int: 有界

### Integer: 无界

### Float

### Double

### Bool: True | False

### Char: Unicode字符

## Type Class

### (==) :: (Eq a) => a -> a -> Bool

### (>) :: (Ord a) => a -> a -> Bool

### Show

### Read

### Enum

### Bounded

### Num

### Floating

### Integral
