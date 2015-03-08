run: get_mongo export_mongo setup_mongo restore setup_bundler run_rails

get_mongo:
	wget http://downloads.mongodb.org/linux/mongodb-linux-x86_64-3.0.0.tgz
	tar -zxvf mongodb-linux-x86_64-3.0.0.tgz
	mkdir -p mongodb
	cp -R -n mongodb-linux-x86_64-3.0.0/ mongodb

export_mongo:
	export PATH=mongodb/mongodb-linux-x86_64-3.0.0/bin:$PATH

setup_mongo:
	mkdir -p mongodb/data/db
	chmod +777 mongodb/data/db
	mongod &

restore: 
	mongorestore db/dump
setup_bundler:
	gem install bundler
run_rails:
	rails s
