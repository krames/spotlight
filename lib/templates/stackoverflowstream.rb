require 'serel' 


Serel::Base.config(:stackoverflow, 'myapp') 

puts Serel::Question.search().intitle("Rackspace").get()

#question.intitle = "Rackspace"


require 'serel'
class StackOverFlowQuestions
  
  def initialize()
    Serel::Base.config(:stackoverflow, 's)td57wpsGmYg9MVp5apmw((')
    relation
  end 
  
  def getRawSearchResults(word) 
    questions = Serel::Question.search().intitle("#{word}")
    relation = questions.get
    return questions.get 
  end
  
  def getUserDisplayName() 
    relation.owner.display_name
  end 
  
  def getTagArray() 
    relation.tag
  end 
  
  def getLink()
    relation.link
  
  
    
    
    
end 
    
    
