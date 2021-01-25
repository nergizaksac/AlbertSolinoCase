class SubCommentsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sub_comments_mailer.submitted.subject
  #
  def submitted (sub_comment)
    @sub_comment = "Hi"

    mail to: "aksac.nergiz@gmail.com", subject: 'new comment'
  end
end
