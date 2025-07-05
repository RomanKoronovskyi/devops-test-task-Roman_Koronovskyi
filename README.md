# devops-test-task-Roman_Koronovskyi

![run-script](https://github.com/RomanKoronovskyi/devops-test-task-Roman_Koronovskyi1/actions/workflows/run-script.yml/badge.svg)

This repository contains a Bash script and GitHub Actions workflow.  

## Project description

The hello.sh script prints message “Hello from Bash!” to the screen, output the current date and time, count the number of regular files only in the output/ directory and create a file in logs/ named log-YYYYMMDD_HHMMSS.txt containing the output of the above steps.

The GitHub Actions workflow runs the script automatically on pushes and pull requests to the main branch, validates the generated log file, and uploads the log file as a CI artifact.

### Instruction for running the script locally:

1. git clone https://github.com/RomanKoronovskyi/devops-test-task-Roman_Koronovskyi.git
2. cd devops-test-task-Roman_Koronovskyi/scripts
3. chmod +x hello.sh
4. ./hello.sh
5. ./hello.sh custom-log-name (optional)

### Instruction for triggering the GitHub Actions workflow manually:

1. Go to the Actions tab in GitHub repository
2. Select the workflow named "*run-script*"
3. Click the "*Run workflow*" button
4. Enter a custom log filename in the input field (optional)
5. Click "*Run workflow*" to start the process

