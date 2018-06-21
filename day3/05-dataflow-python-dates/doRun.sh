#!/bin/bash

python df04.py

ls -ltra

head -n10 ../04-dataflow-python-utc/all_flights* > all_flights_previous.csv
head -n10 all_flights-* > all_flights_actual.csv
diff all_flights_previous.csv all_flights_actual.csv
