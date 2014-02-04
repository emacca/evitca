class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :except => [:index]
  def home    
  end

  def about_us
  end

  def contact_us
  end

  def privacy
  end

  def terms_and_conditions
  end

end