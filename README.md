# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names

## Summary

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

&#x20; 

The half adder: 

assign Y = A ^ B;

assign Carry = A \& B;



The half subber

assign Y = A ^ B;

assign Borrow = \~A ^ B;


The half adder is using an And gate to create the carry value that allows us to use a 01 + 01 and give us a 10, whereas the half subber has to use a not A and B where the if you subtract 01 from 10 it sees a not 0 and a 1 which results in a 01.







### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?



It requires you to store a carry value and then do a separate case of adding at the end.





### 3 - What is the edge case and problem with Two’s Complement number representation?



There is a difference in the amount of usable positive and negative integers, since you have to use a positive digit to represent 0 instead of 1-16 its 0-15. Negative numbers do not have this issue.





---



