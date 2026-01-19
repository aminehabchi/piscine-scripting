#!/bin/bash

./file-struct.sh

mv struct new_struct

mkdir new_struct/0_to_3

mkdir new_struct/6_to_9

mv new_struct/{0,1,2,3} new_struct/0_to_3

mv new_struct/{6,7,8,9} new_struct/6_to_9

rm -r new_struct/5

mv new_struct/A new_struct/new_folder

cp -r new_struct/0_to_3/1 new_struct/6_to_9/8

tar -cf change-struct.tar -C new_struct .