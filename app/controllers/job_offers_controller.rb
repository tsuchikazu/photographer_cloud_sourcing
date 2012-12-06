class JobOffersController < ApplicationController
  # GET /job_offers
  # GET /job_offers.json
  def index
    @job_offers = JobOffer.where(user_id: current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_offers }
    end
  end

  # GET /job_offers/1
  # GET /job_offers/1.json
  def show
    @job_offer = JobOffer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_offer }
    end
  end

  # GET /job_offers/new
  # GET /job_offers/new.json
  def new
    @job_offer = JobOffer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_offer }
    end
  end

  # GET /job_offers/1/edit
  def edit
    @job_offer = JobOffer.find(params[:id])
  end

  # POST /job_offers
  # POST /job_offers.json
  def create
    @job_offer = current_user.job_offers.build(params[:job_offer])

    respond_to do |format|
      if @job_offer.save
        format.html { redirect_to  complete_job_offer_path(@job_offer), notice: 'Job offer was successfully created.' }
        format.json { render json: @job_offer, status: :created, location: @job_offer }
      else
        format.html { render action: "new" }
        format.json { render json: @job_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_offers/1
  # PUT /job_offers/1.json
  def update
    @job_offer = JobOffer.find(params[:id])

    respond_to do |format|
      if @job_offer.update_attributes(params[:job_offer])
        format.html { redirect_to  job_offers_path(@job_offer), notice: 'Job offer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_offers/1
  # DELETE /job_offers/1.json
  def destroy
    @job_offer = JobOffer.find(params[:id])
    @job_offer.destroy

    respond_to do |format|
      format.html { redirect_to job_offers_url }
      format.json { head :no_content }
    end
  end


  # GET /job_offers/1/complete
  def complete
    @job_offer = JobOffer.find(params[:id])

    respond_to do |format|
      format.html # complete.html.erb
    end
  end
end
