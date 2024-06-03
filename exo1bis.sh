#!/bin/bash

mkdir -p personnages/mascottes
mv personnages/super\ heros/hommes/sans\ cape/linuxman personnages/mascottes/tux

mv personnages/super\ heros personnages/comics

echo "Bruce Wayne hides behind this character" > personnages/comics/hommes/cape/batman

echo "He lives in Gotham" >> personnages/comics/hommes/cape/batman

echo "Homer Simpson hides behind this character" > personnages/comics/hommes/sans\ cape/daredevil

echo "DareDevil is a blind comic character" > personnages/comics/hommes/sans\ cape/daredevil

cat personnages/comics/hommes/cape/batman personnages/comics/hommes/sans\ cape/daredevil > personnages/mascottes/mixdarbat

sudo useradd -m fanboy || true

sudo cp -r personnages /home/fanboy

sudo chown -R fanboy:fanboy /home/fanboy/personnages

sudo ln -sf /home/fanboy/personnages /home/fanboy/persofanboy

yourname=$(whoami)
cp -r personnages /home/$yourname/
sudo ln -sf /home/$yourname/personnages /home/$yourname/perso_$yourname

sudo apt install -y tree
sudo tree /home/fanboy/personnages > 14.txt

grep -v "directories" 14.txt > 15.txt

history_file_path=$HISTFILE
if [[ -f $history_file_path ]]; then
    grep -v "cd" $history_file_path | tail -n 250 > myhistory
else
    echo "Error: .bash_history file does not exist"
fi
