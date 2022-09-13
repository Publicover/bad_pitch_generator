class DashboardsController < ApplicationController
  def index
    @sentence = Sentencer.new.call

    respond_to do |format|
      format.html
      format.js { render layout: false }
    end
  end
end
