class CreateNodeTable < ActiveRecord::Migration[6.1]
  def change
    create_table :nodes do |t|
      t.string :external_id, index: true
      t.string :name
      t.string :aasm_state
      t.integer :total_pods
      t.integer :errored_pods
      t.integer :healthy_pods
      t.integer :restarting_pods
      t.string  :size

      t.timestamps
    end
  end
end
