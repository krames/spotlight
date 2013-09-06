require 'serel' 


Serel::Base.config(:stackoverflow, 'myapp') 
Serel::Question.search().intitle("Rackspace").get()

questions = Serel::Question.search().intitle("Rackspace")


    
questions.each do |question|
  Mention.create :blurb=> question.title , 
    :username=>question.owner.display_name, 
    :adapter_configuration_id => 2, 
    :link => question.link
end 
