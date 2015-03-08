echo 'Iniciando a instlacao do ruby 1.9.3'
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 1.9.3
echo 'Inciando a instalacao do mongo' 
sudo apt-get install mongod
mongorestore db/dump
echo 'Inciando a instalacao do rubygems' 
sudo apt-get install rubygems