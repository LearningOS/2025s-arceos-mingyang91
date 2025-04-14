#!/bin/bash

score=0

if ./scripts/test-print.sh ; then
    ((score += 100))
    printf "print pass\n" >&2
fi

if ./scripts/test-ramfs_rename.sh ; then
    ((score += 100))
    printf "ramfs_rename pass\n" >&2
fi

if ./scripts/test-alt_alloc.sh ; then
    ((score += 100))
    printf "alt_alloc pass\n" >&2
fi

if ./scripts/test-support_hashmap.sh ; then
    ((score += 100))
    printf "support_hashmap pass\n" >&2
fi

if ./scripts/test-sys_map.sh ; then
    ((score += 100))
    printf "sys_map pass\n" >&2
fi

if ./scripts/test-simple_hv.sh ; then
    ((score += 100))
    printf "simple_hv pass\n" >&2
fi

echo $score