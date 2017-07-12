#!/bin/bash

# Check if oas-example specification is valid openapis language
swagger-tools validate oas-example/oas-example.yaml

# This part is not used yet but could be a template to merge specifications

# APIS_ROOT=
#REPO=
#BRANCH=
#VER=

#splitfile=/a/path/file.split.yaml
#mergedfile=/dest/path/file.yaml

## Create repository endpoint
#mkdir -p ${APIS_ROOT}/${REPO}/${BRANCH}/${VER}

## Generate entire API file
## (Requires json-ref to be installed: npm I –g json-refs)
#json-refs resolve –y ${splitfile} > ${mergedfile}
