require 'csv'

# == Schema Information
#
# Table name: leads
#
#  id         :bigint           not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  day        :integer
#  month      :integer
#  phone      :integer
#  refer      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Lead < ApplicationRecord
  validates :email, presence: true
  validates :phone, presence: true, on: :update

  def self.to_csv
    attributes = %w{id first_name last_name email day month phone refer created_at}

    ::CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end
end
