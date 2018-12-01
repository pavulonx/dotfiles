#!/bin/sh
sensors | sed -n 3p | grep -oP "\+.*?C" | head -1  
