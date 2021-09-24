clear
echo '      ::::::::::::::::::: :::::::::::::::::::::::::::::::::       ::::::::::::::::::: :::    :::::::::::::: '
echo '     :+:       :+:    :+::+:       :+:       :+:       :+:           :+:   :+:    :+::+:    :+:    :+:      '
echo '    +:+       +:+    +:++:+       +:+       +:+       +:+           +:+   +:+       +:+    +:+    +:+       '
echo '   :#::+::#  +#++:++#: +#++:++#  +#++:++#  :#::+::#  +#+           +#+   :#:       +#++:++#++    +#+ '
echo '  +#+       +#+    +#++#+       +#+       +#+       +#+           +#+   +#+   +#+#+#+    +#+    +#+   '
echo ' #+#       #+#    #+##+#       #+#       #+#       #+#           #+#   #+#    #+##+#    #+#    #+#  '
echo '###       ###    ##########################       ############################# ###    ###    ###    '
echo ''

if [[ $EUID -ne 0 ]]; then
echo "[!] Please run as root!"
exit 1
fi
echo '[!] This script will make sure git, jq and curl are installed. This willtake up space on your system.'
printf 'Proceed? (y/n): '
read proceed

if [ "$proceed" = "y" ]
then
echo '[+] Installing apt dependencies... '
sudo apt-get install git jq curl -qq > /dev/null
echo '[+] Done! Would you like to exit or open the menu?'
echo '1. Exit               2. Menu                    '
printf 'Selection: '
read selection
if [ "$selection" = "2" ]
then
bash freeflight.sh
else
echo '[!] Exiting...'
exit 0
fi
elif [ "$proceed" = "n" ]
then
echo '[!] Exiting...'
exit 0
else
echo '[!] Exiting...'
exit 0
fi
