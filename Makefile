run: restore setup_bundler run_rails

get_mongo:
	curl -O http://downloads.mongodb.org/linux/mongodb-linux-x86_64-3.0.0.tgz
	mkdir -p mongodb
	cp -R -n mongodb-linux-x86_64-3.0.0/ mongodb

export_mongo:
	export PATH=mongodb/mongodb-linux-x86_64-3.0.0/bin:$PATH
	mkdir -p /data/db
	chmod +777 /data/db
	
setup_mongo:
	mkdir -p /data/db
	chmod +777 /data/db
	mongod &

restore: 
	mongorestore db/dump
setup_bundler:
	gem install bundler
run_rails:
	rails s
