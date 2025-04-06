#!/data/data/com.termux/files/usr/bin/bash

# Instalacja pakietów
clear
echo "Sprawdzam, czy wymagane pakiety są zainstalowane..."

# Instalowanie nmap, bluez, nsnake
pkg install -y nmap bluez nsnake

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
echo ""

# Główne menu
PS3="Wybierz opcję (1-3): "
select opcja in "WiFi" "Bluetooth" "Funny"; do
    case $opcja in
        "WiFi")
            clear
            echo -e "\e[1;34m[ WiFi MENU ]\e[0m"
            PS3="Wybierz opcję (1-3): "
            select wifiopcja in "Deuther (demo)" "Spam (demo)" "Scan (działa z nmap)"; do
                case $wifiopcja in
                    "Deuther (demo)")
                        echo "Uruchamianie deuther... (fikcyjne)"
                        # W kontrolowanym środowisku można symulować działanie deautoryzacji, np. za pomocą narzędzi jak aireplay-ng, ale to działa tylko na własnej sieci!
                        break
                        ;;
                    "Spam (demo)")
                        echo "Uruchamianie WiFi spam... (fikcyjne)"
                        # Możesz np. wysłać zapytania ARP do wszystkich urządzeń w sieci w kontrolowanym środowisku
                        break
                        ;;
                    "Scan (działa z nmap)")
                        echo "Skanowanie sieci lokalnej..."
                        # Skanowanie urządzeń w sieci lokalnej (np. Twojego routera)
                        nmap -sn 192.168.1.0/24
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
            select btopcja in "Spam (demo)" "Funny" "Scan (demo)"; do
                case $btopcja in
                    "Spam (demo)")
                        echo "Wysyłanie bluetooth spam... (fikcyjne)"
                        # Symulacja działania spamowania Bluetooth - np. za pomocą hcitool do wywołania zapytań
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
                    "Scan (demo)")
                        echo "Skanowanie bluetooth... (fikcyjne)"
                        # Możesz użyć `hcitool` lub innych narzędzi do skanowania urządzeń Bluetooth w kontrolowanym środowisku.
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