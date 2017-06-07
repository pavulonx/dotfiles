#!/bin/sh

sensors | head -3 | tail -1 | head -24c | tail -8c
