class DashboardsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @sentence = Sentencer.new.call

    respond_to do |format|
      format.html
      format.js { render layout: false }
    end
  end

  def mailchimp_signup
    MailchimpAudience.new.call(params[:email], params[:fname]) if valid_email?(params[:email])
    respond_to do |format|
      format.html
      format.js { render layout: false }
    end
  end

  private

    def valid_email?(address)
      address.match(/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i)
    end
end
