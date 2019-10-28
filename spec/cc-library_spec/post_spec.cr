require "../spec_helper"

describe "Post" do
  it "should have id and thread_id" do
    post = CC::Post.new(id: 1, thread_id: 1)
    post.id.should be_truthy
    post.thread_id.should be_truthy
  end

end
