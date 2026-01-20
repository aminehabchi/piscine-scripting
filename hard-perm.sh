#!/bin/bash

chmod 701 hard-perm/0   # dr-------x
chmod 777 hard-perm/3   # drwxrwxrwx
chmod 701 hard-perm/A   # dr-------x

chmod 604 hard-perm/1   # -r------w-
chmod 604 hard-perm/9   # -r------w-
chmod 604 hard-perm/5   # -r--rw----
chmod 604 hard-perm/6   # -r--rw----
chmod 604 hard-perm/2   # -rw----r--
chmod 604 hard-perm/8   # -rw----r--
chmod 505 hard-perm/4   # -r-x--x---
chmod 505 hard-perm/7   # -r-x--x---

