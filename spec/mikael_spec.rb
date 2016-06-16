require './lib/mikael.rb'

describe 'mikael' do
  after do
    $stdin = STDIN
  end

  it "should be 'happy'" do
    $stdin = StringIO.new("100\n")
    expect { mikael }.to output(/Mikael happy :\)\)\)/).to_stdout
  end

  it "should be 'in a working state'" do
    $stdin = StringIO.new("50\n")
    expect { mikael }.to output(/Mikael in a working state/).to_stdout
  end

  it "should be 'in miserable state'" do
    $stdin = StringIO.new("30\n")
    expect { mikael }.to output(/Mikael is a cranky, impatient, non-productive, barely conscious member of society/).to_stdout
  end
end
