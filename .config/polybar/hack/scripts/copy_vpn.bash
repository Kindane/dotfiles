#!/bin/env bash

/bin/env python ~/.config/polybar/hack/scripts/vpn_ip.py  | awk '{printf $2}'| xclip -selection clipboard
