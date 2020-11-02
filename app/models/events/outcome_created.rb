class Events::OutcomeCreated < Event
  include Events::Notify::ThirdParty
  include Events::Notify::Mentions
  include Events::Notify::InApp
  include Events::Notify::ByEmail
  include Events::LiveUpdate

  def self.publish!(outcome:, recipient_user_ids: [], recipient_audience: nil)
    super(outcome,
          user: outcome.author,
          recipient_user_ids: recipient_user_ids,
          recipient_audience: recipient_audience)
  end
end
