class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_post.subject
  #

  def sendmail_post(post)
    @post = post
    mail to: "osa929@gmail.com",
          subject: "【testagram】投稿されました"
  end
end
