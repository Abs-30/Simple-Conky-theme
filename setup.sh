#! /bin/bash

# Update weather env vars
echo What is your open-weather API key?
read API_KEY
sed -i -E "s/^api_key=.*/api_key=${API_KEY}/" "$(pwd)/Simple-Conky-theme/scripts/weather-v2.0.sh"

echo What is your city code e.g. New York City, US? Found at https://openweathermap.org/find 
read CITY
sed -i -E "s/^city_id=.*/city_id=${CITY}/" "$(pwd)/Simple-Conky-theme/scripts/weather-v2.0.sh"

# Updates var using env vars
sed -i "s|/home/USER_NAME/|/home/${USER}/|" start_conky_desk.desktop
sed -i "s|/home/USER_NAME/|/home/${USER}/|" start_conky.sh

# Moves files to where they belong
mkdir -p $HOME/.config/conky && mv Simple-Conky-theme $HOME/.config/conky && mv start_conky.sh $HOME/.config/conky
mkdir -p $HOME/.config/autostart && mv start_conky_desk.desktop $HOME/.config/autostart


echo "Don't forget to install the fonts which will be found at Simple-Conky-theme/fonts in /home/$USER/.config/conky"
echo "Then logout and back in to start conky :)"