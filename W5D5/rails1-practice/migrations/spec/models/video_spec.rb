# == Schema Information
#
# Table name: videos
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  description :text             not null
#  uploader_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

RSpec.describe Video, type: :model do
  describe "'name' column" do
    it "has been renamed to 'title'" do 
      expect(Video.column_names).to include('title')
      expect(Video.column_names).not_to include('name')
    end
  end

  describe "'uploader_id' column" do
    it "has had an index added" do 
      expect(ActiveRecord::Base.connection.index_exists?(:videos, :uploader_id)).to be(true)
    end
  end
  
end
