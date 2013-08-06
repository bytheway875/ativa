class PotentialAdminsController < ApplicationController
  def create
    @potential = PotentialAdmin.new(params[:potential_admin])
    if @potential.save
      redirect_to users_path
    end
  end

  def index
    @potentials = PotentialAdmin.all
  end  
end