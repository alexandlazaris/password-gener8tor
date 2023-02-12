# password-gener8tor
Generate randomised combinations to brute force passwords

## Data
Store phrases in `./data-phrases.txt` line by line, with no commas to separate. E.g:
```
phrase
word
testing
password
```
## Execution
Run `npm run run-mutations`. Alternatively, if that "run" and "run" bothers you, simply execute the shell script directly using `sh script.sh`.

Within the shell script, there is a prompt for the user to ask whether they want to proceed or not. I auto-answer "yes" for this prompt to enable e2e automation. By doing so, the execution will run through each phrase, taking however long is needed to generate each mutation.

## Output
Each phrase from the datasource file will generate a matching `.txt` output file containing all mutations of that phrase. 

## TODO
- log time for each phrase mutation