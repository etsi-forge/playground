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

if [ "$JOB_BASE_NAME" = "playground-spec1-example" ] ; then
    echo "Validation for Spec1 and Spec2 examples   "
    swagger-tools validate spec1/*.yaml
    res_code=$?
    exit $res_code
fi

echo "Nothing to build. (JOB_BASE_NAME = $JOB_BASE_NAME)"