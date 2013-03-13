# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  cash_balance    :float            default(0.0)
#  stock_balance   :float            default(0.0)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
    has_secure_password
    attr_accessible :email, :cash_balance, :stock_balance, :password, :password_confirmation
    has_many :stocks, :inverse_of => :user
end
