require 'sinatra'
require 'wunderground'

w_api = Wunderground.new("2cf045e8812d9be8")

post '/weather' do
    post = params[:post]['location']
 
    @weather = get_weather(post)
 
    "#{@weather}"
    
    if (@weather == 'sunny')
        erb :sunny
    elsif (@weather == 'cloudy')
        erb :cloudy
    elsif (@weather == 'snowy')
        erb :snowy
    else
        erb :default
    end
end

get '/' do
    erb :home
end