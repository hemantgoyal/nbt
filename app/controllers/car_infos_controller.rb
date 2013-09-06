class CarInfosController < ApplicationController
  # GET /car_infos
  # GET /car_infos.json
  def index
    @car_infos = CarInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @car_infos }
    end
  end

  # GET /car_infos/1
  # GET /car_infos/1.json
  def show
    @car_info = CarInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car_info }
    end
  end

  # GET /car_infos/new
  # GET /car_infos/new.json
  def new
    @car_info = CarInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car_info }
    end
  end

  # GET /car_infos/1/edit
  def edit
    @car_info = CarInfo.find(params[:id])
  end

  # POST /car_infos
  # POST /car_infos.json
  def create
    @car_info = CarInfo.new(params[:car_info])

    respond_to do |format|
      if @car_info.save
        format.html { redirect_to @car_info, notice: 'Car info was successfully created.' }
        format.json { render json: @car_info, status: :created, location: @car_info }
      else
        format.html { render action: "new" }
        format.json { render json: @car_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /car_infos/1
  # PUT /car_infos/1.json
  def update
    @car_info = CarInfo.find(params[:id])

    respond_to do |format|
      if @car_info.update_attributes(params[:car_info])
        format.html { redirect_to @car_info, notice: 'Car info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_infos/1
  # DELETE /car_infos/1.json
  def destroy
    @car_info = CarInfo.find(params[:id])
    @car_info.destroy

    respond_to do |format|
      format.html { redirect_to car_infos_url }
      format.json { head :no_content }
    end
  end
end
