# Download the helper library from https://www.twilio.com/docs/ruby/install
require 'rubygems'
require 'twilio-ruby'
require 'fusioncharts-rails'
require 'json'
# Find your Account SID and Auth Token at twilio.com/console
# and set the environment variables. See http://twil.io/secure



class QetquotesController < ApplicationController
  before_action :set_qetquote, only: %i[ show edit update destroy ]

  # GET /qetquotes or /qetquotes.json
  def index
    @qetquotes = Qetquote.all



    # Chart appearance configuration
    chartAppearancesConfigObj = Hash.new
    chartAppearancesConfigObj = {
                    "caption" => "Countries With Most Oil Reserves [2017-18]",
                    "subCaption" => "In MMbbl = One Million barrels",
                    "xAxisName" => "Country",
                    "yAxisName" => "Reserves (MMbbl)",
                    "numberSuffix" => "D",
                    "theme" => "fusion"
                }

    # An array of hash objects which stores data
    chartDataObj = [
                {"Venezuela" => "290"},
                {"Saudi" => "260"},
                {"Canada" => "180"},
                {"Iran" => "140"},
                {"Russia" => "115"},
                {"UAE" => "100"},
                {"US" => "30"},
                {"China" => "30"}
            ]

    # Chart data template to store data in "Label" & "Value" format
    labelValueTemplate = "{ \"label\": \"%s\", \"value\": \"%s\" },"

    # Chart data as JSON string
    labelValueJSONStr = ""

    chartDataObj.each {|item|
        data = labelValueTemplate % [item.keys[0], item[item.keys[0]]]
        labelValueJSONStr.concat(data)
    }

    # Removing trailing comma character
    labelValueJSONStr = labelValueJSONStr.chop

    # Chart JSON data template
    chartJSONDataTemplate = "{ \"chart\": %s, \"data\": [%s] }"

    # Final Chart JSON data from template
    chartJSONDataStr = chartJSONDataTemplate % [chartAppearancesConfigObj.to_json, labelValueJSONStr]

    # Chart rendering
    @chart2 = Fusioncharts::Chart.new({
            width: "460",
            height: "400",
            type: "column2d",
            renderAt: "chartContainer2",
            dataSource: chartJSONDataStr
        })


    @thelist = []
    Qetquote.group(:sold).count.each do |name, count|
      @thelist.append({
        "label": "#{name}",
        "value": "#{count}"
      })
      @chartData = {

        "chart": {
          # "caption": "Sold Chart",
          # "subCaption": "% of sales from campaigns",
          "showValues": "1",
          "showPercentInTooltip": "0",
          "numberPrefix": "$",
          "enableMultiSlicing": "1",
          "theme": "fusion"
        },
          "data":

            @thelist

        }
        # @chartData2 = {
        #
        #   "chart": {
        #     "caption": "Countries With Most Oil Reserves [2017-18]",
        #     "subCaption": "In MMbbl = One Million barrels",
        #     "xAxisName": "Country",
        #     "yAxisName": "Reserves (MMbbl)",
        #     "numberSuffix": "K",
        #     "theme": "fusion",
        #   },
        #     "data":
        #
        #       @thelist
        #
        #   }
      # Chart rendering
      @chart = Fusioncharts::Chart.new({
              width: "500",
              height: "400",
              type: "pie3d",
              renderAt: "chartContainer",
              dataSource: @chartData
          })
      # @chart2 = Fusioncharts::Chart.new({
      #         width: "500",
      #         height: "400",
      #         type: "MSColumn2D",
      #         renderAt: "chartContainer2",
      #         dataSource: @chartDataBarChart
      #     })




    end
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
      account_sid = ENV["TWILIO_ACCOUNT_SID"]
      auth_token = ENV["TWILIO_AUTH_TOKEN"]
      begin
        @client = Twilio::REST::Client.new account_sid, auth_token
        message = @client.messages
          .create(
             body: "Insurance Agent Text\n\nYou have a new lead.\n\nName: #{@qetquote.firstname} #{@qetquote.lastname}\n\nPhone: #{@qetquote.phone}\n\nEmail: #{@qetquote.email}\n\nQuote: #{request.base_url}/qetquotes/#{@qetquote.id}",
             from: "+13103625983",
             to: "+1#{@qetquote.phone}"
           )
      rescue Twilio::REST::TwilioError => e
          puts e.message
      end
      begin
        @client = Twilio::REST::Client.new account_sid, auth_token
        message = @client.messages
          .create(
             body: "Customer Text\n\nHey #{@qetquote.firstname},\n\nThis is John with Allstate. Thanks for sumbitting your insurance quote.\n\nYour annual home insurance premium would be $#{@qetquote.homeprice}/yr, but i think i could help lower that price for you.  Let's chat!\n\nHere is a link to my calendar.\n\nhttps://calendly.com/beau-enslow/lead-gen",
             from: "+13103625983",
             to: "+1#{@qetquote.phone}"
           )
      rescue Twilio::REST::TwilioError => e
          puts e.message
      end


      # send a signup email to the user, pass in the user object that   contains the user's email address


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
      params.require(:qetquote).permit(:sold, :city, :state, :address, :firstname, :lastname, :email, :zip2, :phone, :homeprice)
    end
end
