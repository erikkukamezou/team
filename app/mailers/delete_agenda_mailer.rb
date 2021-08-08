class DeleteAgendaMailer < ApplicationMailer
  def delete_agenda_mail(user)
    @user = user
    mail to: @user.email, subject: I18n.t('views.messages.delete_agenda_mail_subject')
  end

  def self.delete_agenda_mails(agenda)
    agenda.team.users.each do |user|
      DeleteAgendaMailer.delete_agenda_mail(user).deliver_now
    end
  end
end