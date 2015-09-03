require 'sinatra'
#require 'pony'

set :port, 8080  #defauly port switched to 8080

set :public_folder, 'public'
set :views, 'templates'
#set :erb, :layout => :base

get '/' do
	erb :home
end

get '/about' do
	erb :about
end

get '/contact' do
	erb :contact
end


post '/contact' do
    email = params[:email] || "Hi There"
    name = params[:name] || "Nobody"
    message = params[:message] || "Some Message"
    	 "Message received #{message} from #{name} with email address #{email}"

=begin
Pony.mail(
  :name => params[:name],
  :email => params[:email],
  :body => params[:message],
  :to => '',
  :subject => params[:name] + " has contacted you",
  :body => params[:messag, body => message[:messagee],
  :port => '587',
 :via => :smtp,
 :via_options => { 
    :address              => 'smtp.gmail.com', 
    :port                 => '587', 
    :enable_starttls_auto => true, 
    :user_name            => '', 
    :password             => '', 
    :authentication       => :plain, 
    :domain               => 'localhost.localdomain'
  })

redirect '/success'
    erb :home, :locals => {'email' => email, 'name' => name, 'message' => message}
=end
end


not_found do
	erb :not_found
end