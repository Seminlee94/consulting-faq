class OmniauthController < ApplicationController

    def google_oauth2
        @company = Company.create_from_google_data(request.env['omniauth.auth'])
        if @company.persisted?
            sign_in_and_redirect @company
        else
            flash[:error] = 'We could not sign you in. Please try again.'
            redirect_to new_company_registration_url
        end
    end

    

end
