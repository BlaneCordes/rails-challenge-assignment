namespace :node_polling do
  desc "Starts polling the nodes api"
  task start: :environment do
    NodePollingService.start!
  end
end
