run: restore_dump setup_bundler run_rails

restore_dump: 
	mongorestore db/dump
setup_bundler:
	gem install bundler
run_rails:
	rails s
