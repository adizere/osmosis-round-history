# osmosis-round-history

Round history for the Osmosis blockchain.

## Summary

To summarize, among ~20'000 blocks on Osmosis, we find:

- 20229 blocks have committed in round 0
- 47 blocks committed in round 1
- 1 block comitted in round 3

This summary can be reproduced with the command below:

```sh
cat output.txt | grep round | sort -n | uniq -c
```

## Raw output

See [./output](./output.txt) for the raw output.

- This comprises the height + round + timestamp for samples of block heights in the interval `[11025750 - 11050750]`, for approximately 20'000 blocks.
- This dataset is not ordered.
- The latest of these blocks wes produced on `2023-08-18T13:56:50.102112953Z`.
