#!/usr/bin/env bash
set -e

while read -r SPARK_VERSION; do
  echo ">>> spark version: $SPARK_VERSION"

  COMMAND="sbt -DsparkVersion=\"$SPARK_VERSION\" \"; project root; clean ; +test\""

  echo ">>> Run '$COMMAND'"
  eval $COMMAND
done < ./sparkVersions
