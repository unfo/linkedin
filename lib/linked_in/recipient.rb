module LinkedIn
  class Recipient
    include ROXML
    xml_accessor :person, :as => Person
    def initialize(person)
      @person = person
    end
  end
end