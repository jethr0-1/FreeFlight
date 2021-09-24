  GNU nano 3.2                                                                   freeflight.sh                                                                              

clear
echo '      ::::::::::::::::::: :::::::::::::::::::::::::::::::::       ::::::::::::::::::: :::    :::::::::::::: '
echo '     :+:       :+:    :+::+:       :+:       :+:       :+:           :+:   :+:    :+::+:    :+:    :+:      '
echo '    +:+       +:+    +:++:+       +:+       +:+       +:+           +:+   +:+       +:+    +:+    +:+       '
echo '   :#::+::#  +#++:++#: +#++:++#  +#++:++#  :#::+::#  +#+           +#+   :#:       +#++:++#++    +#+ '
echo '  +#+       +#+    +#++#+       +#+       +#+       +#+           +#+   +#+   +#+#+#+    +#+    +#+   '
echo ' #+#       #+#    #+##+#       #+#       #+#       #+#           #+#   #+#    #+##+#    #+#    #+#  '
echo '###       ###    ##########################       ############################# ###    ###    ###    '

echo ''
echo 'Select from options below'
echo '1. Search aircraft registration        2. Search flight number'
echo '3. Run install script (run with sudo)  4. Exit'
echo ''
printf 'Selection: '
read -r selection
if [ "$selection" = "1" ]; then
        echo 'Selected option 1.'
        bash ./modules/aircraft-registration.sh
elif [ "$selection" = "2" ]; then
        echo 'This module is not currently active, sorry.'
        exit 1
elif [ "$selection" = "3" ]; then
        echo 'Selected option 3.'
        bash ./modules/install.sh
elif [ "$selection" = "4" ]; then
        echo 'Exiting, thank you for using FreeFlight!'
        exit 0
fi
