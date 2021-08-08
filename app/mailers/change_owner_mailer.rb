class ChangeOwnerMailer < ApplicationMailer
  def change_owner_mail(change_owner)
    @change_owner = change_owner
    mail to: @change_owner.email, subject: "リーダー変更"
  end
end