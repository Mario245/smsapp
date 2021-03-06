class SmsmsgsController < ApplicationController
  before_action :set_smsmsg, only: [:show, :edit, :update, :destroy]
  require 'twilio-ruby'

  # GET /smsmsgs
  # GET /smsmsgs.json
  def index
    @smsmsgs = Smsmsg.all
  end

  # GET /smsmsgs/1
  # GET /smsmsgs/1.json
  def show
  end

  # GET /smsmsgs/new
  def new
    @smsmsg = Smsmsg.new
  end

  # GET /smsmsgs/1/edit
  def edit
  end

  # POST /smsmsgs
  # POST /smsmsgs.json
  def create
    @smsmsg = Smsmsg.new(smsmsg_params)

    respond_to do |format|
      if @smsmsg.save
        format.html { redirect_to @smsmsg, notice: 'Smsmsg was successfully created.' }
        format.json { render :show, status: :created, location: @smsmsg }
      else
        format.html { render :new }
        format.json { render json: @smsmsg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smsmsgs/1
  # PATCH/PUT /smsmsgs/1.json
  def update
    respond_to do |format|
      if @smsmsg.update(smsmsg_params)
        format.html { redirect_to @smsmsg, notice: 'Smsmsg was successfully updated.' }
        format.json { render :show, status: :ok, location: @smsmsg }
      else
        format.html { render :edit }
        format.json { render json: @smsmsg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smsmsgs/1
  # DELETE /smsmsgs/1.json
  def destroy
    @smsmsg.destroy
    respond_to do |format|
      format.html { redirect_to smsmsgs_url, notice: 'Smsmsg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def send_message(phone_number, alert_message, image_url)

      @twilio_number = ENV['TWILIO_NUMBER']
      @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
    # Use callbacks to share common setup or constraints between actions.
    def set_smsmsg
      @smsmsg = Smsmsg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smsmsg_params
      params.require(:smsmsg).permit(:phone_no_to, :phone_no_from, :body)
    end
end
end
