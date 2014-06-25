     #!/usr/bin/env ruby
     # Example application to demonstrate some basic Ruby features
     # This code loads a given file into an associated application

     require 'gibbon'
     require 'mailgun'
      class Launcher
      	mg = Mailgun::Client.new "key-9pst8e-c0sj-8lmh6yylz-ntjk9bi1e1"
        result = mg.get "lists/#{'mm@sandbox57565cbadb9f41649a32767a8b50141a.mailgun.org'}"
        result = mg.delete "lists/#{'mm@sandbox57565cbadb9f41649a32767a8b50141a.mailgun.org'}/members/#{'yoyopratham1994@gmail.com'}"
      	parameters = {:from    => 'prathamalag@berkeley.edu',
                  :to      => 'mm@sandbox57565cbadb9f41649a32767a8b50141a.mailgun.org',
                  :subject => 'The Ruby SDK is awesome!',
                  :text    => 'It is really easy to send a message!',
                  :campaign => 'msm'}
                  mg.send_message "sandbox57565cbadb9f41649a32767a8b50141a.mailgun.org", parameters

      	#gb = Gibbon::API.new("2a6262f26c44f974bbc48801f00ca358-us8")
	  	#id = gb.campaigns.create({type: "regular", options: {list_id: "920e9dc900", subject: "Send", from_email: "prathamalag@berkeley.edu", from_name: "Red Carpets", generate_text: true}, content: {html: "<html><head></head><body><h1>Foo</h1><p>Bar</p></body></html>"}, :segment_opts => {:match => "any",  :conditions => [{field: "email", op: "eq", value: "prathamalag1994@gmail.com"}] }})
	  	#gb.campaigns.send(:cid => id["id"])
      end

     launcher = Launcher.new