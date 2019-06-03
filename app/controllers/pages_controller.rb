class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :wikihow]

  def home
  end
end
