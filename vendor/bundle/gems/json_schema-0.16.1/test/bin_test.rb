require "test_helper"

#
# The purpose of this sets of tests is just to include our Ruby executables
# where possible so that we can get very basic sanity checks on their syntax
# (which is something that of course Ruby can't do by default).
#
# We can do this without actually executing them because they're gated by `if
# $0 == __FILE__` statements.
#

describe "executables in bin/" do
  before do
    @bin_dir = File.expand_path("../../bin", __FILE__)
  end

  it "has roughly valid Ruby structure for validate-schema" do
    load File.join(@bin_dir, "validate-schema")
  end
end
