#!/bin/bash
set -e

# psql --username "$POSTGRES_USER" <<-EOSQL
#  CREATE ROLE qwc_admin LOGIN PASSWORD 'qwc_admin';
# EOSQL

# get admin user
QWC_ADMIN_USER=$( grep ^user= /root/.pg_service.conf | sed 's/user=//' )

psql service=qwc_configdb <<-EOSQL
  CREATE SCHEMA qwc_config AUTHORIZATION "$QWC_ADMIN_USER";
  COMMENT ON SCHEMA qwc_config IS 'Configurations for qwc-services';
EOSQL
