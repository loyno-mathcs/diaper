class PartnerMailerJob
include Sidekiq::Worker
 workers 2

  def perform(current_organization, distribution)
      DistributionMailer.partner_mailer(current_organization, distribution).deliver_now if Rails.env.production?
    end
end
