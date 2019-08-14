class AnalyticsJob < ActiveJob::Base
  queue_as :analytics

  def perform
    sleep 120
  end
end
