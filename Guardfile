# -*- ruby -*-

guard 'rspec', all_after_pass: false do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})             { |m| "spec/#{m[1]}_spec.rb" }
  watch('lib/tasksync.rb')              { 'spec' }
  watch('spec/spec_helper.rb')          { 'spec' }
  watch(/spec\/support\/(.+)\.rb/)      { 'spec' }
  #watch(%r|^spec/data/.*|)              { 'spec' }
end
