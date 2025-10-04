#!/bin/bash

directory="$1"

du "$directory" | sort -nr | head -n 5
