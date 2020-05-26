class AddContractorToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :contractor, :string
  end
end
