# password-gener8tor
Generate randomised combinations to brute force passwords.

## Setup
There is a submodule for psudohash contained in this repo. This repo (`password-gener8tor`) expands upon the core functionality delivered by psudohash. You'll need to follow the steps to run psudohash which can be found here: https://github.com/t3l3machus/psudohash#installation

Once complete, `cd` to the root directory for this repo and begin working through the steps below.

## Data
Store phrases in `./data-phrases.txt` line by line, with no commas to separate. E.g:
```
phrase
word
testing
password
```
## Execution
From the root directory, run `npm run run-mutations`. Alternatively, if that "run" and "run" bothers you, simply execute the shell script directly using: 

`sh script.sh`.

## Script behaviour

Within the shell script, there is a prompt for the user to ask whether they want to proceed or not. I auto-answer "yes" for this prompt to enable e2e automation. By doing so, the execution will run through each phrase, taking however long is needed to generate each mutation.

If 1 of 5 mutations takes 10mins, think about going for a quick walk before returning for the whole process to complete.

## Output
Each phrase will generate a matching `.txt` output file containing all mutations of that phrase. 

## TODO
- log time for each phrase mutation
- add unit tests for `script.sh`

Thanks again psudohash for providing such a creative tool! 👏👏