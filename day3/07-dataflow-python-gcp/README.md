# Day 3. Next Generation Batch ETL with Dataflow
## Step 7. Run on GCP

### Pipeline on GCP:
* Go to the GCP web console, API & Services section and enable the Dataflow API.
* Prepare BigQuery Dataset - in CloudShell, type:
	```
	bq mk flights
	``` 
* Get flights to load - in CloudShell, type:
	```
	gsutil cp airports.csv.gz gs://<BUCKET-NAME>/flights/airports/airports.csv.gz
	``` 
* Launch Dataflow JOB - in CloudShell, type:
	```
	./df06.py -p $DEVSHELL_PROJECT_ID -b <BUCKETNAME> 
	``` 
* Go to the GCP web console and wait for the Dataflow ch04timecorr job to finish. It might take several minutes to complete
