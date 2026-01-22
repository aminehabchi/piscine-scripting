#!/bin/bash

printf '41 20 * * 5 echo "01"\n' > task1
printf '* * * * * sh /home/user01/check' > task2
printf '0 0 * * * sh /home/user01/backup' > task3
printf '@reboot 01exec' > task4

tar -cf auto-jobs.tar task1 task2 task3 task4

tar -tvf auto-jobs.tar

rm -f task1 task2 task3 task4
