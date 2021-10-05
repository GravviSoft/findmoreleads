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
        format.html { redirect_to @qetquote, notice: "Qetquote was successfully updated." }
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
      format.html { redirect_to qetquotes_url, notice: "Qetquote was successfully destroyed." }
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
      params.require(:qetquote).permit(:city, :ownhome, :deciding, :comparing,  :ready, :currentinscomp, :annualspend, :address, :firstname, :lastname, :email, :zip2, :phone, :homeprice)
    end
end
