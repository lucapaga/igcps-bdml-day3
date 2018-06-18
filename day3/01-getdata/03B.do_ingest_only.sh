#!/bin/bash

. ../../00_set_params.sh

#./01.make_gcs_bucket.sh ${GCS_BUCKET_NAME_RAW}
./02.ingest_from_crsbucket.sh ${GCS_BUCKET_NAME_RAW}