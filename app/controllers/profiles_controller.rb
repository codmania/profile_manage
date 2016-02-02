class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
  end

  def index
    @profiles = Profile.all
  end

  def show
    @profile = current_user.profile
  end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    @profile.update(profile_params)
    redirect_to @profile
  end

  def destroy
    current_user.profile.delete
    redirect_to new_profile_path
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to @profile
    else
      redirect_to new_profile_path
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:age, :school_address)
  end
end