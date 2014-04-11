source 'https://rubygems.org'

# Specify your gem's dependencies in tasksync.gemspec
gemspec

group :debug do
  gem 'pry'
  #gem 'redcarpet',  :platforms => :ruby

  gem 'pry-debugger'
  gem 'pry-stack_explorer'
  #gem 'debugger',   :platforms => :mri_19
  #gem 'ruby-debug', :platforms => :jruby
end

group :test do
  gem 'fuubar'

  # Guard
  #gem 'guard-rspec'

  # Filesystem Handling for Guard
  #gem 'rb-inotify', :require => false # for Linux
  #gem 'rb-fsevent', :require => false # for OS X
  #gem 'rb-fchange', :require => false # for Windows
  #gem 'wdm', :require => false, :platforms => [:mswin, :mingw] # better way for Windows
  require 'rbconfig'
  gem 'wdm', '>= 0.1.0' if RbConfig::CONFIG['target_os'] =~ /mswin|mingw|cygwin/i # better way for Windows

  # System notifications for Guard
  #gem 'ruby_gntp' # portable, but requires Growl to be installed
  #gem 'growl' if RUBY_PLATFORM =~ /darwin/
  #gem 'libnotify' if RUBY_PLATFORM =~ /linux/
  gem 'rb-notifu', :platforms => [:mswin, :mingw]

end
