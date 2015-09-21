while :
do
	source ./config.ini
	wget -N -q https://pogoda.yandex.by/minsk/ 
	grep -Po 'current-weather__thermometer_type_after">.[0-9]+' index.html | grep -Po '.[0-9]+'
	sleep $sleeptime
done
