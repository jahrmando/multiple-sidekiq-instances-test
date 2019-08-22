#!/bin/bash
isExistApp = `pgrep -f sidekiq`
if [[ -n  $isExistApp ]]; then
    pkill -f sidekiq
fi
