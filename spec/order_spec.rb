require 'order' 

describe Order do 
    subject { Order.new("robbaile12@outlook.com") }

    it 'should have an email when initialized' do 
        expect(subject.username).to eq "robbaile12@outlook.com"
    end 

    it 'should have menu loaded in' do 
        expect(subject.menu.first).to eq({ "item" => "Cod", "price" => 5.00, "quantity" => 20})
    end
end    