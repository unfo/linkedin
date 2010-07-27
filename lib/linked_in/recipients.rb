module LinkedIn
  class Recipients
    include ROXML
    xml_accessor :recipients, :as => [Recipient]
    
    def initialize
      @recipients = []
    end
    
    def <<(other)
      @recipients << other
    end
  end
end