#!/bin/bash

# Wersja i autor
VERSION="1.0.0"
AUTHOR="Created by ApkModerZNJ (TikTok)"

# Wyświetlanie wersji i podpisu
clear
echo -e "\e[1;32m"
cat << "EOF"
 __  __            _   _  _ _           _          
|  \/  | __ _ _ __| | | || (_)___ _ __ | |__   __ _ 
| |\/| |/ _` | '__| |_| || | / __| '_ \| '_ \ / _` |
| |  | | (_| | |  |  _  || | \__ \ |_) | | | | (_| |
|_|  |_|\__,_|_|  |_| |_||_|_|___/ .__/|_| |_|\__,_|
                                 |_|                
EOF
echo -e "\e[1;36m          >> Max H4c15m! (Bate) <<\e[0m"
echo -e "\e[1;34mVersion: $VERSION\e[0m"
echo -e "\e[1;33m$AUTHOR\e[0m"
echo ""

# Główne menu
PS3="Wybierz opcję (1-4): "
select opcja in "Test Wi-Fi" "Test Bluetooth" "Test podatności" "Testy DDoS (Symulacja)"; do
    case $opcja in
        "Test Wi-Fi")
            clear
            echo -e "\e[1;34m[ TESTOWANIE Wi-Fi ]\e[0m"
            PS3="Wybierz opcję (1-3): "
            select wifiopcja in "Skanowanie sieci Wi-Fi" "Testy deauth (Symulacja)" "Powrót"; do
                case $wifiopcja in
                    "Skanowanie sieci Wi-Fi")
                        echo "Skanowanie sieci Wi-Fi w lokalnej sieci..."
                        nmap -sn 192.168.1.0/24
                        break
                        ;;
                    "Testy deauth (Symulacja)")
                        echo "Symulowanie ataku deauth... (brak rzeczywistego działania)"
                        break
                        ;;
                    *)
                        echo "Niepoprawna opcja, spróbuj ponownie."
                        ;;
                esac
            done
            break
            ;;
        "Test Bluetooth")
            clear
            echo -e "\e[1;35m[ TESTOWANIE Bluetooth ]\e[0m"
            PS3="Wybierz opcję (1-3): "
            select btopcja in "Skanowanie urządzeń Bluetooth" "Testy Bluetooth (Symulacja)" "Powrót"; do
                case $btopcja in
                    "Skanowanie urządzeń Bluetooth")
                        echo "Skanowanie urządzeń Bluetooth..."
                        hcitool scan
                        break
                        ;;
                    "Testy Bluetooth (Symulacja)")
                        echo "Symulowanie ataków Bluetooth... (brak rzeczywistego działania)"
                        break
                        ;;
                    *)
                        echo "Niepoprawna opcja, spróbuj ponownie."
                        ;;
                esac
            done
            break
            ;;
        "Test podatności")
            clear
            echo -e "\e[1;36m[ TESTY PODATNOŚCI ]\e[0m"
            echo "Skanowanie otwartych portów..."
            nmap -p 1-65535 localhost
            break
            ;;
        "Testy DDoS (Symulacja)")
            clear
            echo -e "\e[1;31m[ TESTY DDoS - Symulacja ]\e[0m"
            echo "Symulowanie ataku DDoS... (brak rzeczywistego działania)"
            break
            ;;
        *)
            echo "Niepoprawna opcja, spróbuj ponownie."
            ;;
    esac
done
