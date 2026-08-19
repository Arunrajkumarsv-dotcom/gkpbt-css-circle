#!/usr/bin/env bash

set -euo pipefail

read -r -p "Enter the principal amount: " principal
read -r -p "Enter the annual rate of interest (%): " rate
read -r -p "Enter the time period in years: " time

interest=$(awk -v principal="$principal" -v rate="$rate" -v time="$time" \
    'BEGIN { printf "%.2f", (principal * rate * time) / 100 }')

printf 'Simple interest: %s\n' "$interest"