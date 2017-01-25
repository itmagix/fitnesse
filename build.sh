#!/bin/bash
docker build -t rabo-fitnesse .
docker run -ti -p 80:8080 -v ~/fitnesse:/opt/fitnesse/FitNesseRoot rabo-fitnesse
