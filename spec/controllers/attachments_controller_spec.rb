# == Schema Information
#
# Table name: attachments
#
#  id                   :integer          not null, primary key
#  product_id           :integer
#  archivo_file_name    :string
#  archivo_content_type :string
#  archivo_file_size    :integer
#  archivo_updated_at   :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'rails_helper'

RSpec.describe AttachmentsController, type: :controller do

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
