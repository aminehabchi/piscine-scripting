#!/bin/bash

mkdir auto-jobs
cd auto-jobs


printf '41 20 * * 5 /bin/echo "01"' > task1

printf '* * * * * /bin/sh /home/user01/check' > task2

printf '0 0 * * * /bin/sh /home/user01/backup' > task3

printf '@reboot 01exec' > task4

cd ..

tar -cf auto-jobs.tar auto-jobs

ls -l auto-jobs.tar

rm -r auto-jobs
