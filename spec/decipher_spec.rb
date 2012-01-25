require 'spec_helper'

describe "Desipher" do
  
  before(:each) do
    @test_file_location = File.expand_path(File.join(File.dirname(__FILE__), 'sample_data', 'enciphered.txt'))
  end
  
  it "should unshift a file" do
    results = QuickCipher.decipher_file(@test_file_location)
    results.should include("chapter i. down the rabbit-hole")
  end
  
end