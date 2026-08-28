#!/bin/bash

sudo apt install mysql-client-core-8.0 -y
mysql -h localhost -P 3306 --protocol=tcp -u root
