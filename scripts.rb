
     require 'gibbon'
     require 'mailgun'
      class Launcher
      	mg = Mailgun::Client.new "key-9pst8e-c0sj-8lmh6yylz-ntjk9bi1e1"
       
      	parameters = {:from    => 'prathamalag@berkeley.edu',
                  :to      => 'mm@sandbox57565cbadb9f41649a32767a8b50141a.mailgun.org',
                  :subject => 'The Ruby SDK is awesome!',
                  :text    => 'It is really easy to send a message!',
                  "o:campaign" => "msm"}
                  mg.send_message "sandbox57565cbadb9f41649a32767a8b50141a.mailgun.org", parameters

        #the above sends to a mailing list: adding to the same is pretty easy too

        #uncomment to use this instead
        #result = mg.get "lists/#{'mm@sandbox57565cbadb9f41649a32767a8b50141a.mailgun.org'}"
        #result = mg.post "lists/#{'mm@sandbox57565cbadb9f41649a32767a8b50141a.mailgun.org'}/members/#{'yoyopratham1994@gmail.com'}", {:address => 'yoyopratham1994@gmail.com',
        #                                                                     :name => 'Prath am',
        #                                                                    :vars => '{"first": "Prath", "last": "am"}',
        #                                                                  :subscribed => true,
        #                                                                 :upsert => 'no'}
        #result = mg.delete "lists/#{'mm@sandbox57565cbadb9f41649a32767a8b50141a.mailgun.org'}/members/#{'yoyopratham1994@gmail.com'}"
      	#gb = Gibbon::API.new("2a6262f26c44f974bbc48801f00ca358-us8")
	    	#id = gb.campaigns.create({type: "regular", options: {list_id: "920e9dc900", subject: "Send", from_email: "prathamalag@berkeley.edu", from_name: "Red Carpets", generate_text: true}, content: {html: "<html><head></head><body><h1>Foo</h1><p>Bar</p></body></html>"}, :segment_opts => {:match => "any",  :conditions => [{field: "email", op: "eq", value: "prathamalag1994@gmail.com"}] }})
	    	#gb.campaigns.send(:cid => id["id"])
      end

     launcher = Launcher.new