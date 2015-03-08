run: setup_bundler run_rails
	
setup_bundler:
	gem install bundler
	bundle
run_rails:
	rails s
