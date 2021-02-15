class NodePollingResponse < ApplicationRecord

  def compare_node
  end

  def store_node_data
    #parse response
    #iterate through each node and do a diff
    #if its different version the node record
  end
end



# green < 5% errored_pods && < 5% restarted_pods
# yellow >= 5% && < 10% errored_pods || >= 5% && < 10% restarting_pods
# red >= 10% errored_pods || >= 10% restarting_pods

