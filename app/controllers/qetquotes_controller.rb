# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'

# Find your Account SID and Auth Token at twilio.com/console
# and set the environment variables. See http://twil.io/secure



class QetquotesController < ApplicationController
  before_action :set_qetquote, only: %i[ show edit update destroy ]

  # GET /qetquotes or /qetquotes.json
  def index
    @qetquotes = Qetquote.all
  end

  # GET /qetquotes/1 or /qetquotes/1.json
  def show
    @qetquotes = Qetquote.find(params[:id])

  end

  def toggle_ownhome
    @qetquotes.toggle! :ownhome
  end

  # def show_check_icon(ownhome)
  #   if ownhome then
  #     "<i class='fa-li fa fa-check-square'></i>"
  #   else
  #     "<i class='fa-li fa fa-square'></i>"
  #   end
  # end
  # def to_yesorno(boolean)
  #   if boolean == ‘yes’
  #     return ‘yes’
  #   else
  #     return ‘no’
  #   end
  # end

  # GET /qetquotes/new
  def new
    @qetquote = Qetquote.new
  end

  # GET /qetquotes/1/edit
  def edit
  end

  # POST /qetquotes or /qetquotes.json
  def create
    @qetquote = Qetquote.new(qetquote_params)

    if @qetquote.save
      account_sid = "AC8c97a86cc914b3223b22923428e009d1"
      auth_token = 'fe60a604fd08394673950dbbf20a6a88'
      @client = Twilio::REST::Client.new(account_sid, auth_token)

      message = @client.messages
        .create(
           body: "You have a new lead.  #{@qetquote.firstname} #{@qetquote.lastname} - #{@qetquote.phone}               #{request.base_url}/#{@qetquote.id} ",
           from: '+13103625983',
           to: "1#{@qetquote.phone}"
         )
      puts message.sid
      flash[:success] = "Quote was successfully created #{@qetquote.firstname}!"
      redirect_to @qetquote
      # format.html { redirect_to @qetquote }
      # format.json { render :show, status: :created, location: @qetquote }
    else
      respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @qetquote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qetquotes/1 or /qetquotes/1.json
  def update
    respond_to do |format|
      if @qetquote.update(qetquote_params)
        flash[:success] = "Quote was successfully updated!"
        # redirect_to @qetquote
        format.html { redirect_to @qetquote }
        format.json { render :show, status: :ok, location: @qetquote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @qetquote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qetquotes/1 or /qetquotes/1.json
  def destroy
    @qetquote.destroy
    respond_to do |format|
      flash[:danger] = "Quote was successfully deleted!"

      format.html { redirect_to qetquotes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qetquote
      @qetquote = Qetquote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def qetquote_params
      params.require(:qetquote).permit(:city, :state, :address, :firstname, :lastname, :email, :zip2, :phone, :homeprice)
    end
end
