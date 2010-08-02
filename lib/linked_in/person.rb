module LinkedIn
  class Person
    include ROXML
    
    xml_accessor :path, :from => '@path'
    
    def initialize(id)
      @path = '/people/%s' % id
    end
  end
end