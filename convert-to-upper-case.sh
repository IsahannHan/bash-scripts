#!/bin/bash

FILEPATH=$1

echo $(tr [:lower:] [:upper:] < $FILEPATH);