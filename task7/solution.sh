#!/bin/bash

for f in .*; do
    if [ "${f}" != "." ] && [ "${f}" != ".." ]; then
        echo "${f}"
    fi
done | sort
