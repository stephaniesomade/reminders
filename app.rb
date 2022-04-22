require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'
require './lib/space'
require './lib/booking'
require_relative './database_connection_setup.rb'
require_relative './lib/user.rb'
require_relative './lib/database_connection.rb'

class Reminders < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  register Sinatra::Flash

  enable :sessions
end
