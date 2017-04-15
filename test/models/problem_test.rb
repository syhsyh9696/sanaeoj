# == Schema Information
#
# Table name: problems
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text
#  input       :text
#  output      :text
#  samplein    :text
#  sampleout   :text
#  source      :string
#  hint        :string
#  ptype       :integer          default("0"), not null
#  sjcode      :text
#  timelimit   :integer          default("1000"), not null
#  memlimit    :integer          default("65536"), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ProblemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
