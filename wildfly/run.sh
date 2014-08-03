#!/bin/sh
docker run --rm --name sample-app -it -p 8080:8080 -p 9990:9990 siteminds/wildfly-sample-app

