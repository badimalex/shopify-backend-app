# frozen_string_literal: true

class LeadsController < ApplicationController
  def index
    @leads = ::Lead.all

    respond_to do |format|
      format.csv { send_data @leads.to_csv, filename: "leads-#{Date.today}.csv" }
    end
  end
end
