require_relative 'config/environment'

class App < Sinatra::Base
   get '/' do
    erb :user_input
  end

  post '/' do
    pl = PigLatinizer.new
    
    @latin = pl.latinize(params[:user_text])

    erb :results
  end
end