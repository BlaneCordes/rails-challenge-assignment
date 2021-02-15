require "faraday_middleware"

class NodePollingService

  def self.start!
    NodePollingJob.perform_later
  end

  def fetch_nodes
    connection.get "/interview_api/nodes"
  end

  def parse_response(response)
    response.each do |node_response_item|
      node = Node.new
      serialized = node.format_response(node_response_item)
      node = Node.new(serialized)
      node.save
    end
  end

  def persist_node_info!(response)
    parse_response(response)
  end

  private

  def connection
    @connection ||= Faraday.new(url: ENV["API_DOMAIN"], request: { timeout: 5 }) do |c|
      c.headers["X-Auth-Token"] = ENV["API_TOKEN"]
      c.headers["X-Email"] = ENV["API_EMAIL"]
      c.headers["Content-Type"] = "application/json"
      c.request  :url_encoded
      c.response :logger
      c.response :json, content_type: /\bjson$/
      c.adapter Faraday.default_adapter
    end
  end
end
