# == Schema Information
#
# Table name: subscriptions
#
#  id         :integer          not null, primary key
#  plan       :string(255)
#  duration   :integer
#  cost       :decimal(, )      default(0.0)
#  num_photo  :integer          default(0)
#  num_email  :integer          default(0)
#  num_text   :integer          default(0)
#  is_alist   :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :subscription, class: Subscription do
    plan        'Basic'
    duration    1
  end
end
