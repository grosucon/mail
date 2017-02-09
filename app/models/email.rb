class Email < ActiveRecord::Base
  belongs_to :site
  has_many :messages
end