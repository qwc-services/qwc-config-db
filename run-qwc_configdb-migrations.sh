#!/bin/bash
set -e

# we expect the alembic setup to reside in
# /root/alembic by default. So the default base dir
# would be /root
BASE_OF_ALEMBIC_MIGRATIONS="${BASE_OF_ALEMBIC_MIGRATIONS:-/root}"
cd "$BASE_OF_ALEMBIC_MIGRATIONS"

# run migrations
PGSERVICE=qwc_configdb alembic upgrade $ALEMBIC_VERSION
