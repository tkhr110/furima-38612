require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'nicknameとemail、passwordとpassword_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
      it 'パスワードが6文字以上は登録できる' do
        @user.password = 'a1a1a1'
        @user.password_confirmation = 'a1a1a1'
        @user.valid?
        expect(@user).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'emailが空では登録できないこと' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end
      it 'emailが一意性であること' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'emailが@を含むこと' do
        @user.email = 'testmail'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it 'passwordが空では登録できないこと' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it 'パスワードは、半角英数字混合での入力が必須であること' do
        @user.password = '000aaa'
        @user.password_confirmation = '000aaa'
        expect(@user).to be_valid
      end

      it 'パスワードが6文字以下は登録できないこと' do
        @user.password = 'a1a1a'
        @user.password_confirmation = 'a1a1a'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end

      it 'passwordがpassword(確認)の値と一致すること' do
        @user.password = 'a1a2a3'
        @user.password_confirmation = 'a1a2a3a'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
    end
  end
end
