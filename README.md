# ASSIGNMENT 1

## Question 1
c) Assumed there is `no other .txt file` than those told to create (5 lab.txt files).
d) `Current directory : Assignment1`. Used `-A` option to list all files (excluding .. and .). I displayed `sizes in bytes` (default). If human readable size format is needed, add -h.
e) Assumed that `only full path` of the files and folders have to be displayed and not any other properties.
f) In sub-question (a), it was told to cd into `Assignment1 folder`, thus assuming it to be the current directory I used `$PWD` in the command.

## Question 2
Read input from user (not commandline arg).
Assumed that the `entire word` of the input should form a command.
Example: `rpeg == grep` but `arpegbm != grep`.
The input can include whitespaces, it will be treated as 1 word.

## Question 3
Read input from user (not commandline arg).
I diplayed the command and its count in the `descending order of the number of times it is used`. The command used maximum number of times is displayed above.
I have `used bash_history file` for this, but it stores history till the `last session`. 
Neither history command was working nor was append history command working inside the bash script. This is because `history commands are by default disabled in non-interactive scripts`. 
I observed that by `removing the shebang line, the history command works inside the script`, but as I was not sure in which environment testing would be done, I did not prefer removing it. But i am writing down the command for that:
`history | awk '{print $2;}' | sort | uniq -c | sort -r | awk '{print $2 " " $1}'`

## Question 4
Read input from user (not commandline arg).
As mentioned in the discussion, if the input is 1 2 3 4 the output will be (1 2 3 4)

## Question 5
Read input from user (not commandline arg).
Input can contain spaces.

## Question 6
Took command line arguments as input.

## Question 7
Read input from user (not commandline arg).
`Removed header` and then `stored only PIDs` of all processes in pid.txt

## Question 8
Took the crontab file path as command line argument.
Tried installing the crontab job. If its exit status is 0 then printed Yes, else printed No.
Redirected the crontab output/error (if any) to /dev/null

## Question 9
Read input from user (not commandline arg).
`Assumptions:`
`Valid cases:` string of digits (including spaces), string length > 1, after doing the given operations the total%10 should be 0
`Invalid cases:` string length <= 1, any other character than 0-9 (excluding space), after doing the given operations the total%10 != 0

## Question 10
Read all inputs from user (not commandline arg).
Only in the case of `division`, used `floating point` operation upto 4 precesion. Ie, 16.0000 will be printed instead of 16
For other operations `(+, *, -)`, used normal arithmetic so their answers will `never have decimal point`.





