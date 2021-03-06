# == Schema Information
#
# Table name: schedules
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  name           :string(255)      not null
#  info           :text(65535)
#  venue          :string(255)
#  start_date     :datetime
#  end_date       :datetime
#  repeating      :boolean
#  charged        :boolean          default(FALSE)
#  charge_amount  :integer          default(0)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  pre_start_date :datetime
#  pre_end_date   :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :schedule do
    user nil
    name "MyString"
    info "MyText"
    venu "MyString"
    start_date "2016-05-19 15:55:26"
    end_date "2016-05-19 15:55:26"
    repeating false
    charged false
  end
end
