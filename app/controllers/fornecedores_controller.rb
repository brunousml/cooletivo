class FornecedoresController < ApplicationController
  before_filter :check_logged_in, :only=>[:edit, :destroy]
  
  # GET /fornecedores
  # GET /fornecedores.xml
  def index
    @fornecedores = Fornecedore.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fornecedores }
    end
  end

  # GET /fornecedores/1
  # GET /fornecedores/1.xml
  def show
    @fornecedore = Fornecedore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fornecedore }
    end
  end

  # GET /fornecedores/new
  # GET /fornecedores/new.xml
  def new
    @fornecedore = Fornecedore.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fornecedore }
    end
  end

  # GET /fornecedores/1/edit
  def edit
    @fornecedore = Fornecedore.find(params[:id])
  end

  # POST /fornecedores
  # POST /fornecedores.xml
  def create
    @fornecedore = Fornecedore.new(params[:fornecedore])

    respond_to do |format|
      if @fornecedore.save
        flash[:notice] = 'Fornecedore was successfully created.'
        format.html { redirect_to(@fornecedore) }
        format.xml  { render :xml => @fornecedore, :status => :created, :location => @fornecedore }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fornecedore.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fornecedores/1
  # PUT /fornecedores/1.xml
  def update
    @fornecedore = Fornecedore.find(params[:id])

    respond_to do |format|
      if @fornecedore.update_attributes(params[:fornecedore])
        flash[:notice] = 'Fornecedore was successfully updated.'
        format.html { redirect_to(@fornecedore) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fornecedore.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fornecedores/1
  # DELETE /fornecedores/1.xml
  def destroy
    @fornecedore = Fornecedore.find(params[:id])
    @fornecedore.destroy

    respond_to do |format|
      format.html { redirect_to(fornecedores_url) }
      format.xml  { head :ok }
    end
  end
  
private
   def check_logged_in
       authenticate_or_request_with_http_basic("Clientes") do | username, password |
         username == "admin" && password == "facil123"
   end   
end
  
  
end
