# osmosis-round-history

Round history for the Osmosis blockchain.

## Summary

To summarize, among 20'000 blocks on Osmosis, we find:

- 9979 blocks have committed in round 0
- 22 blocks committed in round 1
- no block committed in more than 1 round

This can be reproduced with the command below:

```sh
cat output.txt | grep round | sort -n | uniq -c
```

## Raw output

See [./output](./output.txt) for the raw output.

- This comprises the height + round + timestamp for the block heights in the interval `[11040750 - 11050750]`, that is 10'001 blocks.
- This dataset is not ordered.
- These blocks were produced between the time period `[2023-08-17T21:46:46.081994245Z - 2023-08-18T13:56:50.102112953Z]`.
