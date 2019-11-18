#!/usr/bin/env bash

assert_equal() {
  if [ "$1" = "$2" ]; then
    echo "pass"
  else
    echo "failure: got $1 instead of expected $2"
  fi
}

conway_tests(){
  echo "A 1-by-1 array with a dead cell is returned unchanged"

  local INPUT=(0)
  local EXPECTED_OUTPUT=(0)
  local ACTUAL_OUTPUT=$(./conway.sh $INPUT)

  assert_equal $ACTUAL_OUTPUT $EXPECTED_OUTPUT


  echo "A 2-by-1 array with all dead cells is returned unchanged"

  INPUT=(0, 0)
  EXPECTED_OUTPUT=(0, 0)
  ACTUAL_OUTPUT=$(./conway.sh $INPUT)

  assert_equal $ACTUAL_OUTPUT $EXPECTED_OUTPUT
}

conway_tests
