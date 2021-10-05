class QuoteStepsController < ApplicationController
  include Wicked::Wizard
  steps :one, :two, :three, :four, :five


  def show
    @qetquote = Qetquote.new
    render_wizard
  end
  def update
    @qetquote = Qetquote.find(params[:qetquote])
    @qetquote.update(qetquotes_params)

    # @qetquote = Qetquote.find(params[:qetquote])
    # params[:qetquote] = step.to_s
    # params[:qetquote] = 'active' if step == steps.last
    # @qetquote.update_attributes(params[:id])
    render_wizard @qetquote
  end
  # POST /qetquotes or /qetquotes.json
  # def create
  #   @qetquote = Qetquote.create(email: "test@tests.com", firstname: "Test", lastname: "Test", phone: "Test", phone: "5555555555")
  #   @qetquote.save
  #   redirect_to quote_steps_url
  #
  #
  # end
  # def update
  #     @qetquote = Qetquote.create(qetquotes_params)
  #     if @qetquote.save
  #       flash[:success] = "Welcome to the Find More Leads App #{@user.firstname}!"
  #       wizard_path(steps.first)
  #     else
  #       render 'new'
  #     end
  # end
  # def update
  #   @qetquote.update(qetquotes_params)
  #   render_wizard @qetquote
  # end
  # def finish_wizard_path(params)
  # end

  private
  def redirect_to_finish_wizard
    render_wizard @qetquote
  end
  # def redirect_to_finish_wizard
  #   flash[:success] = "Submission was successfully created #{@qetquote.firstname}!"
  #   redirect_to newquote_url
  #
  #     # format.html { redirect_to @qetquote, notice: "Qetquote was successfully created." }
  #     # format.json { render :show, status: :created, location: @qetquote }
  #
  # end

  def qetquotes_params
    params.require(:qetquote).permit(:firstname, :lastname, :phone, :propertytype, :primaryres, :currentinscomp, :address, :city, :state, :email, :zip2)
  end
end
