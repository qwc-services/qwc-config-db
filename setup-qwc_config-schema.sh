#!/bin/bash
set -e

# psql --username "$POSTGRES_USER" <<-EOSQL
#  CREATE ROLE qwc_admin LOGIN PASSWORD 'qwc_admin';
# EOSQL

psql service=qwc_configdb <<-EOSQL
  CREATE SCHEMA qwc_config AUTHORIZATION qwc_admin;
  COMMENT ON SCHEMA qwc_config IS 'Configurations for qwc-services';
EOSQL
