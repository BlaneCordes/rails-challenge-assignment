class CreateNodeVersions < ActiveRecord::Migration[6.1]
  def change
    create_table :node_versions do |t|
      t.integer :node_id, index: true
      t.integer :version
      t.string :aasm_state
      t.json :node

      t.timestamps
    end
  end
end
