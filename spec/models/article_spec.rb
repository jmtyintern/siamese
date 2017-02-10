require 'rails_helper'

# RSpec.describe Article, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe "articleが作られているか" do
  let!(:user) {create(:user)}
  let!(:article) {create(:article, user_id: user.id)}
  subject {user}

  it "articleが作られている" do
    is_expected.to be_valid
  end
end
