#!/bin/bash
while read n; do git -C .vdirsyncer/ checkout ${n};vdirsyncer sync; done < <(git -C .vdirsyncer/ for-each-ref --format="%(refname:short)")
