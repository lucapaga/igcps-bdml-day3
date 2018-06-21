#!/bin/bash

python df05.py

ls -ltra

head -n10 all_flights-*
head -n10 all_events-*

head -n10 ../05-dataflow-python-dates/all_flights* > all_flights_previous.csv
head -n10 all_flights-* > all_flights_actual.csv
diff all_flights_previous.csv all_flights_actual.csv
