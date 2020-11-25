require "http_actionmailer/railtie"
require "http_actionmailer/mailer_api"

module HttpActionMailer
  class DeliveryMethod
    attr_accessor :settings

    def initialize(params)
      self.settings = params
    end

    def deliver!(mail)
      MailerApi.new(mail_options(mail), mail.body.to_s).send
    end

    private
      def mail_options(mail)
        {
          to: mail.to.try(:join, ', '),
          cc: mail.cc.try(:join, ', '),
          bcc: mail.bcc.try(:join, ', '),
          sender: mail.from.try(:join, ', '),
          subject: mail.subject,
          endpoint: settings[:endpoint],
          token: settings[:token]
        }
      end
  end
end
