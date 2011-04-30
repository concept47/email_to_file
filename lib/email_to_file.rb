module Concept47
  module ActionMailer
      def perform_delivery_file(mail)
          filename = mail.content_type.eql?('text/plain') ? 'email.txt' : 'email.html'       
          filename = Rails.root.join('public', 'email', filename) 
          File.open( filename, 'w'){ |f| f.write(mail.body) }
      end
  end    
end