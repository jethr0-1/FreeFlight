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
echo '3. Get flight history                  4. Exit'
echo ''
printf 'Selection: '
read -r selection
if [ "$selection" = "1" ]; then
	echo 'Selected option 1.'
	bash ./modules/aircraft-registration.sh
fi
