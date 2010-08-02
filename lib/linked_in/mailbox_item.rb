module LinkedIn
  class MailboxItem
    include ROXML
    xml_convention :dasherize
    xml_accessor :subject
    xml_accessor :body
    xml_accessor :recipients, :as => Recipients
    
    def initialize(opts={})
      defaults = { :subject => '', :body => '', :recipients => [] }
      opts = defaults.merge(opts)
      @subject = opts[:subject]
      @body = opts[:body]
      @recipients = Recipients.new
      opts[:recipients].each do |id|
        @recipients << Recipient.new(Person.new(id))
      end
    end
  end
end