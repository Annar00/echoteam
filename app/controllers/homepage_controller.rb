class HomepageController < ApplicationController
  def home
  end

  def haulrecord
    @hauls = Haul.all
  end

  def userrecord
    @users = User.all
  end

  def speciescoposition
    @rd1 
  end

  def echogramdata
    @echograms = Echogram.all
  end

  def speciesrecord
    @species = Species.all
  end


  
end