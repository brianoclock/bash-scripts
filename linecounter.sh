#!/bin/bash
# Amazing solution using xargs
find . -name '*.txt' -type f | xargs wc -l
