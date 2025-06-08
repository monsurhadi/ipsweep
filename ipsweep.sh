#!/bin/bash

# ──────────────────────────────────────────────
# ASCII Banner: ipsweep by hadi._404nf
# ──────────────────────────────────────────────
clear
echo "       _                                         __            __           "
echo "      ()__  ______      _____  ___  ____      / /____  ____/ /___  _____"
echo "     / / __ \/ ___/ | /| / / _ \/ _ \/ __ \    / __/ _ \/ ___/ __/ _ \/ ___/"
echo "    / / // (_  )| |/ |/ /  _/  __/ // /   / //  __(_  ) /_/  __/ /    "
echo "   // .// |/|/\/\/ ./\/\//\/\//     "
echo "    //                           //   /_/                             "
echo ""
echo "                        Tool: ipsweep"
echo "                      Author: hadi._404nf"
echo ""

# ──────────────────────────────────────────────
# Prompt for IP base (e.g., 192.168.4)
# ──────────────────────────────────────────────
read -p "🔹 Enter the IP base (e.g., 192.168.4): " IPBASE

# ──────────────────────────────────────────────
# Input Validation
# ──────────────────────────────────────────────
if [[ -z "$IPBASE" ]]; then
    echo " You forgot to enter an IP base!"
    echo " Example usage: ./ipsweep_tester.sh → then enter 192.168.4"
    exit 1
fi

# ──────────────────────────────────────────────
# Start IP Sweep
# ──────────────────────────────────────────────
echo ""
echo "🔍 Scanning $IPBASE.1 to $IPBASE.254 for live hosts..."
echo ""

for ip in $(seq 1 254); do
    ping -c 1 -W 1 "$IPBASE.$ip" | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done

wait
echo ""
echo " Scan complete."
