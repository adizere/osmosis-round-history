#!/usr/bin/env bash
set -e

# Adi Seredinschi
# August 2023
# Basic tool to fetch round history from the Osmosis network.

start=11050749
end=11050750
OUTPUT_FILE=./output.txt


while getopts s:e: flag
do
    case "${flag}" in
        s) start=${OPTARG};;
        e) end=${OPTARG};;
    esac
done

echo "start height: $start";
echo "end height: $end";
echo "output will be appended to: $OUTPUT_FILE";


curl "https://rpc.osmosis.zone/commit?height=[$start-$end]" | jq '{height: .result.signed_header.commit.height, time: .result.signed_header.header.time, round: .result.signed_header.commit.round}' >> ${OUTPUT_FILE}