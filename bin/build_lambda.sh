#!/bin/bash

BASE_DIR="lambda"
LAMBDA_DIRS=("")

for dir in "${LAMBDA_DIRS[@]}"; do
    LAMBDA_PATH="$BASE_DIR/$dir"
    echo "Zipping Lambda function in $LAMBDA_PATH..."
    if [ -d "$LAMBDA_PATH" ]; then
        zip -r "$LAMBDA_PATH/handler.zip" "$LAMBDA_PATH"/*
    else
        echo "Directory $LAMBDA_PATH not found!"
        exit 1
    fi
done
