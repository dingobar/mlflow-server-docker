#!/bin/bash
set -e
mlflow server --backend-store-uri postgresql+psycopg2://${DBUSERNAME}:${DBPASSWORD}@${DBHOST}:5432/${DBDATABASE} \
    --host 0.0.0.0 \
    --default-artifact-root ${MLFLOW_ARTIFACT_S3_URI}