#!/bin/bash

# Clear terminal screen for better readability
clear

echo "===================================================="
echo "    FLUTTER FVM ARCHITECTURE MANAGEMENT SCRIPT"
echo "===================================================="
echo "1. Run Application"
echo "2. Install Dependencies"
echo "3. Clean Cache & Get"
echo "4. Run Code Generation"
echo "5. Install Packages"
echo "===================================================="
echo -n "Press the matching key [1-5] to execute: "

read -r character

echo "" # Print empty line for spacing

case $character in
  1)
    echo "🚀 Starting Development Environment..."
    fvm flutter run -d chrome
    ;;

  2)
    echo "📥 Fetching dependencies..."
    fvm flutter pub get
    ;;

  3)
    echo "🧹 Cleaning project build directories and caching..."
    fvm flutter clean
    fvm flutter pub get
    ;;

  4)
    echo "⚙️ Generating auto-generated files (l10n / models)..."
    fvm flutter pub run build_runner build --delete-conflicting-outputs
    ;;

  5)
    echo "💡 Enter package names separated by spaces (e.g., dio bloc google_fonts):"
    read -r list_of_packages

    # Check if the user didn't enter anything
    if [ -z "$list_of_packages" ]; then
      echo "⚠️ No packages entered. Aborting installation."
    else
      echo "📦 Installing packages: $list_of_packages..."
      # Passes the string directly into the command, allowing multiple packages at once
      fvm flutter pub add $list_of_packages
    fi
    ;;

  *)
    echo "❌ Invalid option selected. Exiting script."
    exit 1
    ;;
esac

echo ""
echo "✅ Command execution finished."