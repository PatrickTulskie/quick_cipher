require 'spec_helper'

describe "Desipher" do
  
  before(:each) do
    @test_file_location = File.expand_path(File.join(File.dirname(__FILE__), 'sample_data', 'enciphered.txt'))
  end
  
  it "should automatically decipher a file" do
    results = QuickCipher.decipher_file(@test_file_location)
    results.should include("chapter i. down the rabbit-hole")
  end
  
  it "should decipher a string using a known cipher" do
    results = QuickCipher.decipher("iwt fjxrz qgdlc udm yjbets dktg iwt qxv apon sdv.", 15)
    results.should == "the quick brown fox jumped over the big lazy dog."
  end
  
end