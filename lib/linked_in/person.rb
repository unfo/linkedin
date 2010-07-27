module LinkedIn
  class Person
    include ROXML
    
    xml_accessor :path, :from => '@path'
    
    def initialize(person_path)
      @path = person_path
    end
  end
end