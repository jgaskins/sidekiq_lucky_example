require "sidekiq"

class UpdateWorker
  include Sidekiq::Worker

  def perform(member_id : String)
    logger.info "hello, UpdateWorker"
  end
end
