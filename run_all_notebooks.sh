#!/bin/bash

find Notebooks/DatasetAnalysis/ -type f -name "*.ipynb" | while read notebook; do
    echo "Running $notebook"
    jupyter-nbconvert --to notebook --execute --inplace "$notebook"
done