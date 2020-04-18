# frozen_string_literal: true

class Api::V1::LeadsController < ActionController::API
  def create
    ::Lead::SaveStep.new(user_params).save_step
  end

  private

  def user_params
    params.require(:form)
          .permit :first_name, :last_name, :email, :phone, :day, :month, :refer, :step
  end
end
