cd ~/Github/gko_hotelsofstbarth_org
tail -f log/development.log

cd ~/Github/gko_hotelsofstbarth_org
tail -f log/production.log

cd ~/Github/gko_hotelsofstbarth_org
bundle install
rails s

cd ~/Github/gko_hotelsofstbarth_org
rails s
cd ~/Github/gko_hotelsofstbarth_org
RAILS_ENV=production bundle exec rake assets:precompile 
RAILS_ENV=development bundle exec rake assets:precompile 
bundle exec rake assets:precompile

cd ~/Github/gko_hotelsofstbarth_org
bundle exec rake railties:install:migrations
bundle exec rake db:bootstrap


cd ~/Github/gko_hotelsofstbarth_org
bundle exec rake railties:install:migrations
bundle exec rake db:migrate

bundle exec rake db:master:create
bundle exec rake db:load_default 
bundle exec rake db:load_sample


cd ~/developer/workspace/gko_hotelsofstbarth_org
rake jobs:work
cd ~/developer/workspace/gko_hotelsofstbarth_org
rake jobs:clear

cd ~/Github/gko_joufdesign_com
bundle exec rake assets:themes:precompile

