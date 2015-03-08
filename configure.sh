echo 'Inciando a instalacao do mongo' 
sudo apt-get install mongodb
mongorestore db/dump
echo 'Inciando a instalacao do rubygems' 
sudo apt-get install rubygems