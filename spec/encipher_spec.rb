require 'spec_helper'

describe "Encipher" do
  
  before(:each) do
    @test_file_location = File.expand_path(File.join(File.dirname(__FILE__), 'sample_data', 'deciphered.txt'))
  end
  
  it "should encipher a file" do
    results = QuickCipher.encipher_file(@test_file_location, 15)
    results.should include("rwpeitg x. sdlc iwt gpqqxi-wdat")
  end
  
end