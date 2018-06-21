#!/bin/bash

python df02.py

ls -ltra

head -n10 airports_with_tz* > airports_with_tz_head.csv
head -n10 ../02-dataflow-python-basic/extracted_airports* > extracted_airports_head.csv
diff *head.csv