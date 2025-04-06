#!/data/data/com.termux/files/usr/bin/bash

# Definicja wersji skryptu
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
PS3="Wybierz opcję (1-3): "
select opcja in "WiFi" "Bluetooth" "Funny"; do
    case $opcja in
        "WiFi")
            clear
            echo -e "\e[1;34m[ WiFi MENU ]\e[0m"
            PS3="Wybierz opcję (1-3): "
            select wifiopcja in "Scan (Skanowanie sieci)" "Spam (Symulacja)" "Deauth (Symulacja)"; do
                case $wifiopcja in
                    "Scan (Skanowanie sieci)")
                        echo "Skanowanie sieci lokalnej..."
                        nmap -sn 192.168.1.0/24
                        break
                        ;;
                    "Spam (Symulacja)")
                        echo "Symulowanie spamu... (brak rzeczywistego działania)"
                        break
                        ;;
                    "Deauth (Symulacja)")
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
        "Bluetooth")
            clear
            echo -e "\e[1;35m[ Bluetooth MENU ]\e[0m"
            PS3="Wybierz opcję (1-3): "
            select btopcja in "Scan (Skanowanie urządzeń Bluetooth)" "Spam (Symulacja)" "Funny (Zabawne opcje)"; do
                case $btopcja in
                    "Scan (Skanowanie urządzeń Bluetooth)")
                        echo "Skanowanie urządzeń Bluetooth..."
                        hcitool scan
                        break
                        ;;
                    "Spam (Symulacja)")
                        echo "Symulowanie Bluetooth spam... (brak rzeczywistego działania)"
                        break
                        ;;
                    "Funny (Zabawne opcje)")
                        clear
                        echo -e "\e[1;36m[ FUNNY MENU ]\e[0m"
                        PS3="Wybierz opcję (1-2): "
                        select funopcja in "Snake (gra)" "Lotto (losowanie)"; do
                            case $funopcja in
                                "Snake (gra)")
                                    nsnake
                                    break
                                    ;;
                                "Lotto (losowanie)")
                                    echo "Losuję liczby Lotto..."
                                    for i in {1..6}; do echo -n "$((RANDOM % 49 + 1)) "; done
                                    echo ""
                                    break
                                    ;;
                                *)
                                    echo "Niepoprawna opcja, spróbuj ponownie."
                                    ;;
                            esac
                        done
                        break
                        ;;
                    *)
                        echo "Niepoprawna opcja, spróbuj ponownie."
                        ;;
                esac
            done
            break
            ;;
        "Funny")
            clear
            echo -e "\e[1;36m[ FUNNY MENU ]\e[0m"
            PS3="Wybierz opcję (1-2): "
            select funopcja in "Snake (gra)" "Lotto (losowanie)"; do
                case $funopcja in
                    "Snake (gra)")
                        nsnake
                        break
                        ;;
                    "Lotto (losowanie)")
                        echo "Losuję liczby Lotto..."
                        for i in {1..6}; do echo -n "$((RANDOM % 49 + 1)) "; done
                        echo ""
                        break
                        ;;
                    *)
                        echo "Niepoprawna opcja, spróbuj ponownie."
                        ;;
                esac
            done
            break
            ;;
        *)
            echo "Niepoprawna opcja, spróbuj ponownie."
            ;;
    esac
done
