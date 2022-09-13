# frozen_string_literal: true

class MailchimpAudience
  def call(email, fname)
    mailchimp = MailchimpMarketing::Client.new
    mailchimp.set_config({
                           api_key: ENV["MAILCHIMP_API_KEY"],
                           server: ENV["MAILCHIMP_SERVER_PREFIX"]
                         })
    list_id = ENV["MAILCHIMP_AUDIENCE_LIST_ID"]

    subscriber = {
      email_address: email,
      status: 'pending',
      merge_fields: {
        FNAME: fname
      }
    }

    mailchimp.lists.add_list_member list_id, subscriber, { skip_merge_validation: false }
  end
end
