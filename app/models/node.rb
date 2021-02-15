class Node < ApplicationRecord
  has_many :node_versions, dependent: :destroy
  after_update :version_up

  def current_status
    # green < 5% errored_pods && < 5% restarted_pods
    # yellow >= 5% && < 10% errored_pods || >= 5% && < 10% restarting_pods
    # red >= 10% errored_pods || >= 10% restarting_pods
  end

  #  => {"id"=>"node_0", "name"=>"Mr Gravity",
  # "total_pods"=>108, "errored_pods"=>2, "healthy_pods"=>106,
  # "restarting_pods"=>0, "type"=>"large"}

  def format_response(node_response)
    {
      external_id: node_response["id"],
      name: node_response["name"],
      total_pods: node_response["total_pods"],
      errored_pods: node_response["errored_pods"],
      healthy_pods: node_response["healthy_pods"],
      restarting_pods: node_response["restarting_pods"],
      size: node_response["type"]
    }
  end
end
