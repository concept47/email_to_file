#if email folder doesn't exist, create it if file is configured
#config options :folder, :filename, :method
require 'email_to_file.rb'
ActionMailer::Base.send :include, Concept47::ActionMailer
Dir.mkdir(Rails.root.join('public', 'email')) if (ActionMailer::Base.delivery_method.eql?(:file) && !File.exists?(Rails.root.join('public', 'email')))