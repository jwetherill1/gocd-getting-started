#!/bin/bash

echo "version 1911"
echo "this is the getting started build updated after walk"

count=0
printf "GO_PIPELINE_LABEL is ${GO_PIPELINE_LABEL}"
while [ "$count" -lt 3 ]; do
    count=$((count + 1))

    color_code=$((21 + (count % 7) + (1 + $RANDOM % 10)))
    printf "\e[01;${color_code}mBuilding [$count of 20]\e[00m\n"

    sleep 1
done

cat >my-artifact.html <<EOF
<html>
<body>
<h3>An example artifact</h3>
<pre>
==== ==== ====
An example artifact, created on: $(date)

Pipeline which created it: $GO_PIPELINE_NAME
Pipeline counter was: $GO_PIPELINE_COUNTER
==== ==== ====
</pre>
<body>
</html>
EOF
