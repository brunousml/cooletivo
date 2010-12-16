class CupomsController < ApplicationController
  before_filter :check_logged_in, :only=>[:edit, :destroy]

 def new
	@cupom = Cupom.new
 end
 
 def create
	@cupom = Cupom.new(params[:cupom])
	if @cupom.save
	   redirect_to "/cupoms/#{@cupom.id}"
	else
	   render :template => "cupoms/new"
	end
 end
 
 def edit
   @cupom = Cupom.find(params[:id])
 end
 
 def update
  @cupom = Cupom.find(params[:id])
  if @cupom.update_attributes(params[:cupom])
     redirect_to "/cupoms/#{@cupom.id}"
  else
     render :template => "cupoms/edit"
  end
 end

 def show
	@cupom = Cupom.find(params[:id])
 end

 def index
	@cupom = Cupom.all
 end

private
   def check_logged_in
       authenticate_or_request_with_http_basic("Clientes") do | username, password |
         username == "admin" && password == "facil123"
   end   
end

end
