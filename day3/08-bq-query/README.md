# Day 3. Next Generation Batch ETL with Dataflow
## Step 8. Explore results with Big Query

### Pipeline on GCP:
* Navigate to the BigQuery console (UI) and type in:
	```
			SELECT
			  ORIGIN,
			  DEP_TIME,
			  DEP_DELAY,
			  DEST,
			  ARR_TIME,
			  ARR_DELAY,
			  NOTIFY_TIME
			FROM
			  flights.simevents
			WHERE
			  (DEP_DELAY > 15 and ORIGIN = 'SEA') or
			  (ARR_DELAY > 15 and DEST = 'SEA')
			ORDER BY NOTIFY_TIME ASC
			LIMIT
			  10
	```
