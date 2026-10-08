#!/bin/sh
# The submitted string lands inside the Angular app.
set -e
H=http://web:5000
P=$(curl -fsS -d "string=probe$$" "$H/home")
echo "$P" | grep -q "probe$$"
echo "$P" | grep -q "ng-app"
