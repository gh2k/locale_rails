require 'test_helper'

class MailerTest < ActiveSupport::TestCase

  def setup
    Locale.clear
  end

  test "localized emails with multiparts" do
    assert_equal ['email.text.html.erb', 'email.text.plain.erb'].sort, Mailer.create_email.body.split(/\n/).sort

    Locale.default = "en"
    assert_equal ['email.text.html.erb', 'email.text.plain.erb'].sort, Mailer.create_email.body.split(/\n/).sort

    Locale.default = "fr_FR"
    assert_equal ['email_fr_FR.text.html.erb', 'email_fr_FR.text.plain.erb'].sort, Mailer.create_email.body.split(/\n/).sort
  end

  teardown do
    Locale.default = nil
  end
end
