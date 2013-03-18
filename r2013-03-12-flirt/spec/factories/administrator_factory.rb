# == Schema Information
#
# Table name: administrators
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  role       :string(255)
#  ssn        :string(255)
#  tel        :string(255)
#

FactoryGirl.define do
  factory :administrator, class: Administrator do
    role 'dba'
    user    {FactoryGirl.create(:admin_user)}
  end
end
