require_relative 'config/environment'

class App < Sinatra::Base
   get '/' do
    erb :user_input
  end

  post '/' do
    l = PigLatinizer.new
    
    @latin = l.latinize(params[:user_text])

    erb :results
  end
end