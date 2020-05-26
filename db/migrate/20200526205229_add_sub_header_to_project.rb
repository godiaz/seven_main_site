class AddSubHeaderToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :sub_header, :string
  end
end
