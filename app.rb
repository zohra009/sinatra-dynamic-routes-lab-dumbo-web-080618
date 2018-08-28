require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}" #.reverve can be used in the interpolation
  end
  get "/square/:number" do
    @exponent = params[:number].to_i #make in to interger from string #'s'
    "#{@exponent**2}" # ** stands for exponent and 2 means square
  end
  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @word = params[:phrase]
    base = " " #variable established outside loop temporary & being changed and has to be putside parameters
    @num.times do #iterating over @nums which id the n-times
      base += @word
    end
    base
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do

    #binding.pry
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i #.to_i is setting it to integer
    number2 = params[:number2].to_i
    if operation == "add"
      answer = number1 + number2
    elsif operation == "subtract"
      answer = number1 - number2
    elsif operation == "multiply"
      answer = number1 * number2
    elsif operation == "divide"
      answer = number1 / number2
    else
      answer = "Unable to perform this operation"
    end
    answer.to_s #to_s is setting it to string
  end

end
