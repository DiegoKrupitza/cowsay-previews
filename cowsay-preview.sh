#! /bin/bash


COWFILES="beavis.zen blowfish bong bud-frogs bunny cheese cower daemon default dragon dragon-and-cow elephant elephant-in-snake eyes flaming-sheep ghostbusters head-in hellokitty kiss kitty koala kosh luke-koala meow milk moofasa moose mutilated ren satanic sheep skeleton small sodomized stegosaurus stimpy supermilker surgery telebears three-eyes turkey turtle tux udder vader vader-koala www"

SAYTEST=""

if [ -p /dev/stdin ]; then
        while IFS= read line; do
                SAYTEST="${SAYTEST}
                ${line}"
        done
else
        if [  "$1" ]; then
               SAYTEST=$1 
        else
                SAYTEST="Cowsay-Preview"
        fi
fi

for val in $COWFILES; do
    echo -e "\n\n=============================="
    echo "==== $val"
    echo "=============================="
    cowsay -f $val $SAYTEST
done
