#!usr/bin/sed -f
1i # Copyright IITM 2022
$a # Copyright IITM 2022
/.*\(\) {$/i # START FUNCTION
/^}$/a # END FUNCTION
s/background_sleep/inactive_sleep/g
/active_sleep\(.*\)/i # TODO:DEPRECATED
10~10a ####
