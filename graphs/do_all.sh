#!/bin/bash

shopt -s nullglob
for f in ./*.p
do
    gnuplot $f
done