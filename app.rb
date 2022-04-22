require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'

class Reminders < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  register Sinatra::Flash

  enable :sessions
end
