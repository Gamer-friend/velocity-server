#!/bin/bash

# ┌────────────────────────────────────────────┐
# │         LAX1DUDEPARTNER Server Boot        │
# └────────────────────────────────────────────┘

clear
echo "Preparing server environment..."
sleep 1

# ASCII banner
echo "╔══════════════════════════════════════════════════════════════════════════════╗"
echo "║                                                                              ║"
echo "║   |\\     /|   |\\     /|   |\\     /|   |\\     /|   |\\     /|   |\\     /|   ║"
echo "║   | \\   / |   | \\   / |   | \\   / |   | \\   / |   | \\   / |   | \\   / |   ║"
echo "║   |  \\_/  |   |  \\_/  |   |  \\_/  |   |  \\_/  |   |  \\_/  |   |  \\_/  |   ║"
echo "║   |       |   |       |   |       |   |       |   |       |   |       |   ║"
echo "║                                                                              ║"
echo "║                         LAX1DUDEPARTNER                                      ║"
echo "║                                                                              ║"
echo "╚══════════════════════════════════════════════════════════════════════════════╝"

sleep 2

echo ""
echo "Boot sequence engaged..."
sleep 1

# Harmless diagnostics
echo "System Info:"
uname -a
echo "User: $(whoami)"
echo "Uptime:"
uptime
echo "Memory:"
free -h
echo "Disk:"
df -h .

# Begin loop
while [ true ]; do
    echo ""
    echo "────────────────────────────────────────────────────────────"
    echo "Starting Velocity server at $(date)"
    echo "────────────────────────────────────────────────────────────"

    java -Xms4096M -Xmx4096M -jar server.jar

    echo ""
    echo "Server exited. Restarting..."
    echo "Press CTRL + C to stop."

    # Simulated loading
    echo -n "Reloading assets ["
    for i in {1..30}; do
        echo -n "#"
        sleep 0.05
    done
    echo "]"

    echo "Loading remap.js..."
    sleep 1
    echo "remap.js: OK"

    # Random flavor actions
    case $((RANDOM % 6)) in
        0) echo "🌀 Cleaning up temp files..." ;;
        1) echo "📦 Re-indexing plugin cache..." ;;
        2) echo "🔧 Verifying server integrity..." ;;
        3) echo "🎲 Rolling dice for good luck..." ;;
        4) echo "🧠 Rebooting AI assistant... just kidding." ;;
        5) echo "🌐 Checking for interdimensional lag..." ;;
    esac

    # Harmless system commands
    echo "Snapshot:"
    echo "Current directory: $(pwd)"
    echo "Files in server/:"
    ls -lh
    echo "Java processes:"
    ps aux | grep java | head -n 3
    echo "Environment variables:"
    env | grep JAVA

    # Simulated log rotation
    echo "Rotating logs..."
    mkdir -p logs/archive
    mv logs/latest.log logs/archive/log_$(date +%s).log 2>/dev/null
    touch logs/latest.log

    # Fake plugin scan
    echo "Scanning plugins..."
    ls plugins/ 2>/dev/null
    sleep 1

    # More flavor
    echo "Velocity server ready to relaunch."
    echo "────────────────────────────────────────────────────────────"
    sleep 2
done
