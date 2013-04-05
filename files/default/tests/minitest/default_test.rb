require 'minitest/spec'

describe_recipe 'adobe-readere' do

  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  it "installs adobe-reader" do
    `which acroread`.must_match(/acroread/)
  end

end
