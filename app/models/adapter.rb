class Adapter < ActiveRecord::Base
  belongs_to :site

  enum adapter_type: [:google, :yandex]

  before_create :ensure_adapter_fields

  private

  def ensure_adapter_fields
    if self.google?
      self.user_name = site.email
      self.password = site.password
      self.adress = 'smtp.gmail.com'
      self.port = '587'
      self.domain = 'gmail.com'
      self.adapter_type = '0'
    end
  end
end
