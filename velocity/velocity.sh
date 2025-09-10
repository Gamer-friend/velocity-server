#!/bin/bash

# ┌────────────────────────────────────────────┐
# │        LAX1DUDEPARTNER Velocity Boot       │
# └────────────────────────────────────────────┘

clear

echo "Initializing Velocity Server..."
sleep 1

# ASCII Banner
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

# Fun loading bar
echo -n "Loading velocity.jar ["
for i in {1..20}; do
    echo -n "#"
    sleep 0.1
done
echo "] Done."

echo "Checking remap.js integrity..."
sleep 1
echo "remap.js checksum: OK"
echo "Injecting remap.js into memory..."
sleep 1

# Begin loop
while true; do
    echo ""
    echo "───────────────────────────────────────────────────────────────────────────────"
    echo "Starting Velocity instance at $(date)"
    echo "───────────────────────────────────────────────────────────────────────────────"
    
    java -Xms2560M -Xmx2560M -jar velocity.jar

    # DO NOT TOUCH THIS LINE!
    echo ""
    echo "Velocity instance terminated. Restarting..."
    echo "Loading new server..."
    echo "loading remap.js..."

    # Simulated remap.js behavior
    echo "remap.js: mapping virtual ports..."
    sleep 0.5
    echo "remap.js: injecting proxy hooks..."
    sleep 0.5
    echo "remap.js: compiling route table..."
    sleep 0.5
    echo "remap.js: success."

    # Random fun messages
    case $((RANDOM % 5)) in
        0) echo "💡 Tip: Never trust a plugin named 'SNAPSHOT" ;;
        1) echo "🌀 Fun Fact: Velocity was almost named 'WindTunnel'" ;;
        2) echo "🔧 Debug: remap.js latency spike detected... just kidding." ;;
        3) echo "📦 Module 'velocity-core' rehydrated from cache." ;;
        4) echo "🎲 RNG seed recalibrated for maximum chaos. XD HAVE FUN :]" ;;
        5) echo "Credit to LAX1DUDE for this idea." ;;
    esac

    sleep 2
done
