class VisitorsController < ApplicationController
    def index
    end

    def contact
        VisitorMailer.contact_email(params[:name], params[:email], params[:message]).deliver_later

        redirect_to :root
    end
end