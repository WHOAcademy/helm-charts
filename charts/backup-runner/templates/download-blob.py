#!/usr/bin/env python
import os
from azure.storage.blob import BlobClient

blob = BlobClient.from_connection_string(conn_str=os.getenv('STORAGE_CONN_STR'), container_name=os.getenv('STORAGE_CONTAINER_NAME'), blob_name="/tmp/keycloak-db_18-09-2020.sql.gz.aes256cbc")

with open(source_file, "wb") as my_blob:
    blob_data = blob.download_blob()
    blob_data.readinto(my_blob)
