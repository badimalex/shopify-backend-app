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
require 'test_helper'

class LeadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
