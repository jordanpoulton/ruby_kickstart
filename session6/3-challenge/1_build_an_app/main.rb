# Put under source control
# Create the Gemfile
# Add Rspec, Sinatra and Capybara
# Install Gems
# $ bundle exec rspec spec
# Write the Sinatra Application
# Add rackup
# Show that it works locally
# Commit everything to git
# Create a new app on heroku
# Push the app to heroku
require 'sinatra'
require File.dirname(__FILE__)+'/lib/caesar_cipher'


get "/" do
  erb :home
end

post "/encrypt" do
  @decrypted = params[:message]
  @encrypted = CaesarCipher.encrypt(@decrypted)
  erb :encrypt
end

post "/decrypt" do
  @encrypted = params[:message]
  @decrypted = CaesarCipher.decrypt @encrypted
  erb :decrypt
end
