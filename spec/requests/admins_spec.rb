require 'rails_helper'

RSpec.describe "Admins", type: :request do
  describe 'GET RailsAdmin::Engine' do
    context '未ログイン時' do
      it "サインインページにリダイレクトされること" do
        get rails_admin_path
        expect(response).to redirect_to new_account_session_path
      end
    end

    context 'ログインアカウントがadminでないとき' do
      before do
        account = create(:nonadmin_account)
        sign_in account
      end

      it "404エラーがでること" do
        expect {
          get rails_admin_path
        }.to raise_error(ActionController::RoutingError)
      end
    end

    context 'ログインアカウントがadminのとき' do
      before do
        account = create(:admin_account)
        sign_in account
      end

      it '200を返すこと' do
        get rails_admin_path
        expect(response).to have_http_status(200)
      end
    end
  end
end
