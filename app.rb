require "pry"
require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
  @user_name = params[:name]
  "#{@user_name.reverse}"
  end
  
  get '/square/:number' do 
    #binding.pry
   @num = params[:number] 
   @square = @num.to_i * @num.to_i
   "#{@square.to_s}"
  end
  
  get '/say/:number/:phrase' do 
    answer = ""
    @num = params[:number]
    #binding.pry
    @num.to_i.times do 
      answer += params[:phrase].to_s
    end
    answer
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/operataion/:number1/:number2' do 
    
  end

end