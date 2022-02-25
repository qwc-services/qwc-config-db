#!/bin/bash
set -e

# run migrations
PGSERVICE=qwc_configdb alembic upgrade $ALEMBIC_VERSION
