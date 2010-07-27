module LinkedIn
  class MailboxItem
    include ROXML
    xml_convention :dasherize
    xml_accessor :subject
    xml_accessor :body
    xml_accessor :recipients, :as => Recipients
    
    def initialize(opts={})
      defaults = { :subject => '', :body => '', :recipient_paths => [] }
      opts = defaults.merge(opts)
      @subject = opts[:subject]
      @body = opts[:body]
      @recipients = Recipients.new
      opts[:recipient_paths].each do |recipient_path|
        @recipients << Recipient.new(Person.new(recipient_path))
      end
    end
  end
end