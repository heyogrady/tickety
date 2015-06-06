namespace :notifications do
  desc "Send welcome emails to those who subscribed to Tickety in the last 24 hours"
  task tickety_welcome: :environment do
    Subscription.deliver_welcome_emails
  end
end
