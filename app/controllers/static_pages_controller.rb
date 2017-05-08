class StaticPagesController < ApplicationController
  before_action :is_logged_in, only: [:contact]
  def home
  end

  def contact
  end

  def about
  end

  def helloworld
  end
end
