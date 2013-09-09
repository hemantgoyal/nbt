class CounterBidsController < ApplicationController
  # GET /counter_bids
  # GET /counter_bids.json
  def index
    @counter_bids = CounterBid.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @counter_bids }
    end
  end

  # GET /counter_bids/1
  # GET /counter_bids/1.json
  def show
    @counter_bid = CounterBid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @counter_bid }
    end
  end

  # GET /counter_bids/new
  # GET /counter_bids/new.json
  def new
    @counter_bid = CounterBid.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @counter_bid }
    end
  end

  # GET /counter_bids/1/edit
  def edit
    @counter_bid = CounterBid.find(params[:id])
  end

  # POST /counter_bids
  # POST /counter_bids.json
  def create
    @counter_bid = CounterBid.new(params[:counter_bid])

    respond_to do |format|
      if @counter_bid.save
        format.html { redirect_to '/dashboard/dealer', notice: 'Counter bid was successfully created.' }
        format.json { render json: @counter_bid, status: :created, location: @counter_bid }
      else
        format.html { render action: "new" }
        format.json { render json: @counter_bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /counter_bids/1
  # PUT /counter_bids/1.json
  def update
    @counter_bid = CounterBid.find(params[:id])

    respond_to do |format|
      if @counter_bid.update_attributes(params[:counter_bid])
        format.html { redirect_to @counter_bid, notice: 'Counter bid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @counter_bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counter_bids/1
  # DELETE /counter_bids/1.json
  def destroy
    @counter_bid = CounterBid.find(params[:id])
    @counter_bid.destroy

    respond_to do |format|
      format.html { redirect_to counter_bids_url }
      format.json { head :no_content }
    end
  end
end
