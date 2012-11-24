# guard 'spork', :rspec => true, :cucumber => false, :test_unit => false, :bundler => true do
#   watch('config/application.rb')
#   watch('config/environment.rb')
#   watch(%r{^config/environments/.*\.rb$})
#   watch(%r{^config/initializers/.*\.rb$})
#   watch('Gemfile')
#   watch('Gemfile.lock')
#   watch('test/test_helper.rb') { :test_unit }
#   watch(%r{features/support/}) { :cucumber }
# end

guard 'livereload', :port => '35729' do
  watch(%r{app/views/.+\.(erb|haml|slim)})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)/assets/\w+/(.+\.(css|js|html)).*})  { |m| "/assets/#{m[2]}" }
end
