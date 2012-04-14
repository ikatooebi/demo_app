class MicropoostsController < ApplicationController
  # GET /micropoosts
  # GET /micropoosts.json
  def index
    @micropoosts = Micropoost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micropoosts }
    end
  end

  # GET /micropoosts/1
  # GET /micropoosts/1.json
  def show
    @micropoost = Micropoost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micropoost }
    end
  end

  # GET /micropoosts/new
  # GET /micropoosts/new.json
  def new
    @micropoost = Micropoost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micropoost }
    end
  end

  # GET /micropoosts/1/edit
  def edit
    @micropoost = Micropoost.find(params[:id])
  end

  # POST /micropoosts
  # POST /micropoosts.json
  def create
    @micropoost = Micropoost.new(params[:micropoost])

    respond_to do |format|
      if @micropoost.save
        format.html { redirect_to @micropoost, notice: 'Micropoost was successfully created.' }
        format.json { render json: @micropoost, status: :created, location: @micropoost }
      else
        format.html { render action: "new" }
        format.json { render json: @micropoost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micropoosts/1
  # PUT /micropoosts/1.json
  def update
    @micropoost = Micropoost.find(params[:id])

    respond_to do |format|
      if @micropoost.update_attributes(params[:micropoost])
        format.html { redirect_to @micropoost, notice: 'Micropoost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micropoost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropoosts/1
  # DELETE /micropoosts/1.json
  def destroy
    @micropoost = Micropoost.find(params[:id])
    @micropoost.destroy

    respond_to do |format|
      format.html { redirect_to micropoosts_url }
      format.json { head :no_content }
    end
  end
end
