# Day 3. Next Generation Batch ETL with Dataflow
## Step 2. Prepare Dataflow/Python and Create basic Pipeline

### Batch processing in DataFlow
* Setup:
        ```
	cd 04_streaming/simulate
        ./install_packages.sh
        ```
* Parsing airports data:
	```
	python df01.py
	head extracted_airports-00000*
	rm extracted_airports-*
	```
