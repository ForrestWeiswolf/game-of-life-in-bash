#!/usr/bin/env bash

#!/usr/bin/env bash

INPUT=(0)
EXPECTED=(0)
OUTPUT=$(./conway.sh $INPUT)

if [ "$OUTPUT" = "$EXPECTED" ]; then
  echo "pass";
else
  echo "failure: expected $EXPECTED, but got $OUTPUT"
fi
