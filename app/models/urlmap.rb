require 'digest/sha1'

class Urlmap < ActiveRecord::Base
  attr_accessible :long_url, :short_url
  
  before_save do |record|
    record.short_url = record.shorten
  end
  
  def shorten
    Digest::SHA1.hexdigest(self.inspect.to_s + Time.now.to_s + rand(2**10*3**10*4**10*7).to_s).sum.to_s(36)
  end
end
