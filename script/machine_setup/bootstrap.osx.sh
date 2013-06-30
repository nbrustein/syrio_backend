# this script will do the following
# - install rvm
# - install rails 4
# - install mongo

# pre-requisites
# - xcode
# - xcode command line tools
# - brew

# install rvm with rails
\curl -L https://get.rvm.io | bash -s stable --rails
rvm install jruby 1.7.4
rvm install ruby-2.0.0-p247

brew install mongodb
mongod > /dev/null 2>&1 &

# I tried to do 'gem install rubygems-bundler', but I still got 'ERROR: Gem bundler is not installed, run `gem install bundler` first."
# So I did 'gem install bundler'.  Seems like rvm was supposed to handle this?
# Hmm.  Maybe I was just in the wrong directory?  Not sure what happened now