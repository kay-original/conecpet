require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Userモデル作成に関するテスト" do
    it "nameカラムがnilの場合、登録できない" do
      user = build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("が空になっています")
    end
    it "emailカラムがnilの場合、登録できない" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("が空になっています")
    end
    it "passwordカラムがnilの場合、登録できない" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("が空になっています")
    end
    it "passwordが存在してもpassword_confirmationがない場合は登録できないこと" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("が一致しません")
    end
    it "重複したemailが存在する場合登録できないこと" do
      user1 = create(:user, email: "test@test")
      user2 = build(:user, email: "test@test")
      user2.valid?
      expect(user2.errors[:email]).to include("が既に登録済みです")
    end
    it "passwordが5文字以下であれば登録できないこと" do
      user = build(:user, password: "12345", password_confirmation: "12345")
      user.valid?
      expect(user.errors[:password]).to include("6文字以上で入力")
    end
  end
end