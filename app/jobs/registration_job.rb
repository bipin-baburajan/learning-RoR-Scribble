class RegistrationJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    RegistrationMailer.submission("Welcome home").deliver
  end
end
