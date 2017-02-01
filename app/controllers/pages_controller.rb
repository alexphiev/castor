class PagesController < ApplicationController
  def home
    @var = 11
  end

  def page1
    @welcome_page1 = "Bonjour, je suis la page 1 !"
  end
end
