class Mention < ActiveRecord::Base
  belongs_to :adapter_configuration
  attr_accessible :content, :link, :blurb, :adapter_configuration_id, :username
end
