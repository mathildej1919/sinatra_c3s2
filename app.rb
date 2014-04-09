require 'sinatra'

#  get '/' do 
#    output  = "<form method='post' action='/'>"
#    output += "<input type='text' name='user_name' placeholder='name'>"
#    output += "<input type='text' name='user_age' placeholder='age'>"
#    output += "<button type='submit'>Submit</button>"
#    output += "</form>"

#    output
#  end

#  post '/' do
#    name = params[:user_name]
#    age  = params[:user_age].to_i # to_i converts the string "5" to the integer 5 

#    if age >= 18
#      output = "Hello #{name.capitalize}. Here's your drink."
#    else
#      output = "This bar isn't the place for you, #{name.capitalize}. You're too young."
#    end

#    output += " <br><br><a href='/'>again</a>"

#    output
#  end

get '/' do
  erb :form
end

post '/' do
  @name = params[:user_name]
  @age  = params[:user_age].to_i
  @sex = params[:user_sex]
  @day = params[:day]

  if @age >= 18 && @sex = "female" && @day = "tuesday"
    erb :female_tue
  if @age >= 18 && @sex = "female" && @day ! "tuesday"
    erb :drink
  if @age >= 18 && @sex ! "female" && @day = "tuesday"
    erb :male_tue
  if @age >= 18 && @sex ! "female" && @day ! "tuesday"
    erb :drink
  else
    erb :no_drink
  end
end