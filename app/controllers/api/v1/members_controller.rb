class Api::V1::MembersController < ApplicationController
  
  def index
    members = Member.all
    render json: members
  end

  def create
    member = Member.new(:name, :email, :admin_level, :password, :uid)
    if member.save
      render json: member, status: :accepted
    else
      render json: {errors: member.errors.full_messages}, status: :unprocessible_entity
    end

  end



  private

  def member_params(*args)
    params.require(:member).permit(*args)
  end


end
