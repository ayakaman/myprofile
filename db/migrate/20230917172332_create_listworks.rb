class CreateListworks < ActiveRecord::Migration[5.2]
  def change
    create_table :listworks do |t|

      t.timestamps
    end
  end
end
