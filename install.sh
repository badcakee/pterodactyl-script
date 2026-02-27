#!/bin/bash

clear
echo "====================================="
echo "   Pterodactyl Installer Menu"
echo "====================================="
echo ""
echo "1) Install Panel"
echo "2) Install Wings"
echo "3) Install Panel & Wings"
echo "4) Install Panel + Blueprint"
echo "5) Install Panel & Wings + Blueprint"
echo "6) Uninstall Panel or Wings (Including Blueprint)"
echo ""
read -p "Select an option [1-6]: " option

PANEL="https://raw.githubusercontent.com/pterodactyl-installer/pterodactyl-installer/master/installers/panel.sh"
WINGS="https://raw.githubusercontent.com/pterodactyl-installer/pterodactyl-installer/master/installers/wings.sh"
BLUEPRINT="https://raw.githubusercontent.com/badcakee/blueprint/refs/heads/main/run.sh"
UNINSTALL="https://raw.githubusercontent.com/pterodactyl-installer/pterodactyl-installer/master/ui/uninstall.sh"

case $option in
    1)
        echo "Installing Panel..."
        bash <(curl -s $PANEL)
        ;;
    2)
        echo "Installing Wings..."
        bash <(curl -s $WINGS)
        ;;
    3)
        echo "Installing Panel..."
        bash <(curl -s $PANEL)
        echo "Installing Wings..."
        bash <(curl -s $WINGS)
        ;;
    4)
        echo "Installing Panel..."
        bash <(curl -s $PANEL)
        echo "Installing Blueprint..."
        bash <(curl -s $BLUEPRINT)
        ;;
    5)
        echo "Installing Panel..."
        bash <(curl -s $PANEL)
        echo "Installing Wings..."
        bash <(curl -s $WINGS)
        echo "Installing Blueprint..."
        bash <(curl -s $BLUEPRINT)
        ;;
    6)
        echo "Running Uninstall..."
        bash <(curl -s $UNINSTALL)
        ;;
    *)
        echo "Invalid option."
        exit 1
        ;;
esac
