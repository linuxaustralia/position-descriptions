#!/usr/bin/env bash

for source in odt_source/*.odt; do
    dest=${source##odt_source/}
    dest=${dest%%.odt}
    dest=${dest}.md
    pandoc -f odt -t gfm ${source} > ${dest}
done
