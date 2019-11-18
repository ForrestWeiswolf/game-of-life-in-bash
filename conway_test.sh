#!/usr/bin/env bash


echo "A 1-by-1 array with a dead cell is returned unchanged"

INPUT=(0)
EXPECTED=(0)
OUTPUT=$(./conway.sh $INPUT)

if [ "$OUTPUT" = "$EXPECTED" ]; then
  echo "pass";
else
  echo "failure: expected $EXPECTED, but got $OUTPUT"
fi


echo "A 2-by-1 array with all dead cells is returned unchanged"

INPUT=(0, 0)
EXPECTED=(0, 0)
OUTPUT=$(./conway.sh $INPUT)

if [ "$OUTPUT" = "$EXPECTED" ]; then
  echo "pass";
else
  echo "failure: expected $EXPECTED, but got $OUTPUT"
fi
