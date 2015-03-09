run: setup_mongo setup_bundler run_rails

setup_mongo:
 mongorestore db/dump/

setup_bundler:
 gem install bundler
 bundle
run_rails:
 rails s

