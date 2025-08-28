#! /bin/bash

mkdir ~/linux_p2 && for i in {1..20}; do head -c 500K < /dev/urandom > ~/linux_p2/$i.txt; done