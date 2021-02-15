class NodePollingJob < ApplicationJob
  queue_as :default

  def perform
    puts "polling nodes #{Time.now.utc}"
    NodePollingJob.set(wait: 5.seconds).perform_later

    node_polling_service = NodePollingService.new

    response = node_polling_service.fetch_nodes

    NodePollingResponse.create!(response: response.body)

    node_polling_service.persist_node_info!(response.body)
  end
end
