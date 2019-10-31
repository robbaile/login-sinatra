require 'order' 

describe Order do 
    subject { Order.new("robbaile12@outlook.com") }

    it 'should have an email when initialized' do 
        expect(subject.username).to eq "robbaile12@outlook.com"
    end 
end
    