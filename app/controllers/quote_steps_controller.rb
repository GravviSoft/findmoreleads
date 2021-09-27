class QuoteStepsController < ApplicationController
  include Wicked::Wizard
  steps :one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :ten

  def show
    @qetquote = Qetquote.new
    render_wizard
  end
end
