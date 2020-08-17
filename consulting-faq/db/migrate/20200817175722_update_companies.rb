class UpdateCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column(:companies, :provider, :string, limit: 50, null: false, default: '')
    add_column(:companies, :uid, :string, limit: 500, null: false, default: '')
  end
end
