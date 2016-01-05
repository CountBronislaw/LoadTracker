#!/bin/bash
# rebuild_db.sh
# Author: Travis Carney
# Date: 1/5/16
# This script is used to drop, create, migrate, and seed all of the tables in the LoadTracker project.

echo "Dropping all tables..."
rake db:drop:all
echo "Creating all tables..."
rake db:create:all
echo "Migrating tables..."
rake db:migrate
echo "Seeding Tables..."
rake db:seed
echo "Seeding complete"

