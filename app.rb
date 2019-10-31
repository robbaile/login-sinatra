require 'sinatra/base'
require './lib/order.rb'

class Login < Sinatra::Base
    users = [{:email => "robbaile12@outlook.com", :password => "Laddergoat10"}]

    get '/' do
        @error = params['error']
        erb(:index)
    end

    post '/login' do 
        email = params['email']
        password = params['password']
        if users.select { |user| user == {:email => email, :password => password}}.length == 1
            @@order = Order.new(email)
            redirect('/home') 
        else
            redirect('/error')
        end 
    end

    get '/home' do 
        @logged_in = @@order.username
        erb(:home)
    end

    get '/error' do
        "There has been an error"
    end

    run! if app_file == $0
end