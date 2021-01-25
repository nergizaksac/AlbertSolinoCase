# Preview all emails at http://localhost:3000/rails/mailers/sub_comments_mailer
class SubCommentsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/sub_comments_mailer/submitted
  def submitted
    SubCommentsMailer.submitted SubComment.first
  end

end
