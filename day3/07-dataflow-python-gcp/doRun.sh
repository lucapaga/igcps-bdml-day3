#!/bin/bash

GCP_TARGET_PROJECT=telemar-formazione-master
GCS_BUCKET_NAME=telemar-formazione-master-gcs-ingest-inbound
BIG_QUERY_DATASET=telemar_flights_20180621

bq --location "EU" mk -d ${BIG_QUERY_DATASET}

python df06.py -p ${GCP_TARGET_PROJECT} -b ${GCS_BUCKET_NAME} -d ${BIG_QUERY_DATASET}

echo "=================================================================="
echo "=================================================================="
echo "==   ALL IS DONE HERE!                                          =="
echo "==--------------------------------------------------------------=="
echo "== You can follow the elaboration of the pipeling into Google   =="
echo "== Cloud Console / Dataflow and/or Logging                      =="
echo "=================================================================="
echo "=================================================================="
