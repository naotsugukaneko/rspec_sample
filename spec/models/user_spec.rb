require 'rails_helper'

RSpec.describe User, type: :model do
    describe "名前の表示" do
        let(:params) {{name: "田中"}}
        
        it "年齢1：ユーザーの名前が〜ちゃんと取得できること" do
            params.merge!(age: 1)
            user = User.new(params)
            expect(user.disp_name).to eq "田中ちゃん"
        end
        
        it "年齢15：ユーザーの名前が〜君と取得できること" do
            params.merge!(age: 15)
            user = User.new(params)
            expect(user.disp_name).to eq "田中君"
        end
        
        it "年齢20：ユーザーの名前が〜さんと取得できること" do
            params.merge!(age: 20)
            user = User.new(params)
            expect(user.disp_name).to eq "田中さん"
        end
        
        it "「不正な値です」が取得できること" do
            params.merge!(age: -1)
            user = User.new(params)
            expect(user.disp_name).to eq "不正な値です"
        end
        
    end
end
