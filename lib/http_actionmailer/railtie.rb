module HttpActionmailer
  class Railtie < ::Rails::Railtie
    initializer 'http_actionmailer.add_delivery_method', before: 'action_mailer.set_configs' do
      ActionMailer::Base.add_delivery_method(:http_actionmailer, HttpActionMailer::DeliveryMethod)
    end
  end
end
