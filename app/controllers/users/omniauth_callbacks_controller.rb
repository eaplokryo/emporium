class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
# TODO
  def github
    env["omniauth.auth"].each do |v|
      puts ">>> #{v}"
    end
    render :nothing => true
  end
end
