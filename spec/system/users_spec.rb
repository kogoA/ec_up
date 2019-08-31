require 'rails_helper'

RSpec.describe 'Users', type: :system do
  before do
    user = FactoryBot.create(:user)
    user.confirmed_at = Time.now
    user.save
  end
    context 'can login' do
      scenario 'ログインする' do
        # トップページを開く
        visit root_path#
        click_on 'ログイン'
        fill_in 'メールアドレス', with: 'foobar@amail.com'
        fill_in 'パスワード', with: 'password'
        click_on 'ログイン'
        #ログイン成功
        first(:link, '詳細').click
        expect(page).to have_content '買い物かごに入れる'
        click_on('買い物かごに入れる')
        click_on('park gallery')
        all(:link, '詳細')[3].click
        # binding.pry
        click_on('買い物かごに入れる')
        click_on('park gallery')
        click_on('shopping_cart')
        expect(page).to have_content '商品のお支払い'
        click_on('商品のお支払い')
        sleep 1
          page.within_frame(all('iframe')[0]) do
            fill_in 'メールアドレス', with: 'fo@ba.om'
            fill_in 'カード番号', with: '4242424242424242'
            fill_in '有効期限', with: '0222'
            fill_in 'CVC', with: '222'
            click_on 'を支払う'
          end
        visit root_path
        click_on 'ログアウト'
        expect(page).to have_content 'ログイン'
        # binding.pry
        # save_screenshot
      end
    end
end