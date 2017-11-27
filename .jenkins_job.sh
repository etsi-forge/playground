#!/bin/bash

if [ "$JOB_BASE_NAME" = "forge-playground-oas-example" ] ; then
    echo "GERRIT_PROJECT GERRIT_CHANGE_NUMBER/GERRIT_PATCHSET_NUMBER"
    echo "$GERRIT_PROJECT $GERRIT_CHANGE_NUMBER/$GERRIT_PATCHSET_NUMBER"
    echo "Validating OAS spec"
    # Check if oas-example specification is valid openapis language
    swagger-tools validate oas-example/oas-example.yaml
    res_code=$?
    exit $res_code
fi

if [ "$JOB_BASE_NAME" = "playground-oas-code-gen" ] ; then
    echo "Codegen for OAS project"
    res_code=$?
    exit $res_code
fi 

echo "Nothing to build. (JOB_BASE_NAME = $JOB_BASE_NAME)"
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
