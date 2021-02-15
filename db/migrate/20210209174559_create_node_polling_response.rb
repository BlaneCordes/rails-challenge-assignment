class CreateNodePollingResponse < ActiveRecord::Migration[6.1]
  def change
    create_table :node_polling_responses do |t|
      t.json :response

      t.timestamps
    end
  end
end
