# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  userable_id     :integer
#  userable_type   :string(255)
#

FactoryGirl.define do
  factory :generic_user, class: User do
    username              'generic'
    email                 'generic@gmail.com'
    password              'a'
    password_confirmation 'a'
  end

  factory :regular_user, class: User do
    username              'regular'
    email                 'regular@gmail.com'
    password              'a'
    password_confirmation 'a'
  end

  factory :admin_user, class: User do
    username              'admin'
    email                 'admin@gmail.com'
    password              'a'
    password_confirmation 'a'
  end
end
