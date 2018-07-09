mv delivery/carrots.txt veggies

require 'spec_helper'

describe 'directory structure' do
  it 'has the first directory created' do
    expect(File).to be_directory ('./this_is_a_directory_made_in_a_script')
  end

  it 'has the second directory created' do
    expect(File).to be_directory('./another_directory')
  end
end

describe 'file structure' do
  it 'first file is created' do
    expect(File).to exist('./this_is_a_directory_made_in_a_script/first_file.txt'), "Did you create a file named first_file.txt?"
  end

  it 'second file is created' do
    expect(File).to exist('./another_directory/second_file.txt'), "Did you create a file named ./another_directory/second_file.txt?"
  end
end



