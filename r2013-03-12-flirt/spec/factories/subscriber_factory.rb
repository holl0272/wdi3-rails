# == Schema Information
#
# Table name: subscribers
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  tagline         :string(255)
#  bio             :string(255)
#  preferences     :string(255)
#  bodytype        :string(255)
#  location        :string(255)
#  status          :string(255)
#  ethnicity       :string(255)
#  gender          :string(255)
#  age             :integer
#  occupation      :string(255)
#  interests       :string(255)
#  political       :string(255)
#  religious       :string(255)
#  education       :string(255)
#  income          :decimal(, )
#  subscription_id :integer
#  expires         :date
#

FactoryGirl.define do
  factory :subscriber_no_subscription, class: Subscriber do
    tagline 'Walk in the park'
    bio     'I enjoy walks in the park'
    gender  'Female'
    age     18
    user    {FactoryGirl.create(:regular_user)}
  end

  factory :subscriber_with_subscription, class: Subscriber do
    tagline       'Surfer gal'
    bio           'I love swimming'
    gender        'Female'
    age           19
    user          {FactoryGirl.create(:regular_user)}
    subscription  {FactoryGirl.create(:subscription)}
  end
end
