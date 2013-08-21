class MaillinglistsController < ApplicationController
  # GET /maillinglists
  # GET /maillinglists.json
  def index
    @maillinglists = Maillinglist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maillinglists }
    end
  end

  # GET /maillinglists/1
  # GET /maillinglists/1.json
  def show
    @maillinglist = Maillinglist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @maillinglist }
    end
  end

  # GET /maillinglists/new
  # GET /maillinglists/new.json
  def new
    @maillinglist = Maillinglist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @maillinglist }
    end
  end

  # GET /maillinglists/1/edit
  def edit
    @maillinglist = Maillinglist.find(params[:id])
  end

  # POST /maillinglists
  # POST /maillinglists.json
  def create
    @maillinglist = Maillinglist.new(params[:maillinglist])

    respond_to do |format|
      if @maillinglist.save
         format.js
#        format.html { redirect_to @maillinglist, notice: 'Maillinglist was successfully created.' }
#        format.json { render json: @maillinglist, status: :created, location: @maillinglist }
      else
         format.js { "alert('Please try again');"}
#        format.html { render action: "new" }
#        format.json { render json: @maillinglist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /maillinglists/1
  # PUT /maillinglists/1.json
  def update
    @maillinglist = Maillinglist.find(params[:id])

    respond_to do |format|
      if @maillinglist.update_attributes(params[:maillinglist])
        format.html { redirect_to @maillinglist, notice: 'Maillinglist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @maillinglist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maillinglists/1
  # DELETE /maillinglists/1.json
  def destroy
    @maillinglist = Maillinglist.find(params[:id])
    @maillinglist.destroy

    respond_to do |format|
      format.html { redirect_to maillinglists_url }
      format.json { head :no_content }
    end
  end
end
