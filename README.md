# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names Daniel Dayan, Audrey Fitchett

## Summary
We practiced implemementing a ripple counter using several T flip flops and a modulo counter using an adder and d flip flops. 
## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
beacause it toggles on the rising edge of the clock.
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
As you are putting T=1 initially for all of them this makes it so they all start and toggle from 0 -> 1 on the first clock cycle.
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
log_2 1000 ~= 10 so a width of 10
