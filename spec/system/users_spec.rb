require 'rails_helper'

RSpec.describe 'Users', type: :system do
  # before do
  #   user = FactoryBot.create(:user)
  #   # @product = FactoryBot.create(:product)
  # end


     context 'can login' do
     scenario 'ログインする' do
    # トップページを開く
    visit root_path
    click_on 'ログイン'
    fill_in 'メールアドレス', with: 'foobar@amail.com'
    fill_in 'パスワード', with: 'password'
    click_on 'ログイン'
    # click_on 'アカウント作成'
    # ログインフォームにEmailとパスワードを入力する
    
#     fill_in '確認用パスワード', with: 'password'
#     click_on 'アカウント作成'
#     within_window(windows.last) do
#   click_on 'Confirm my Account'
# end
#     within_window 'other_window' do
#   current_url.should match rich.html
# end
    # session.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
    
#     new_window=page.driver.browser.window_handles.last 
# page.within_window new_window do
#   click_on 'Confirm my Account'
# end
    # fill_in 'メールアドレス', with: 'foo@foo.com'
    # fill_in 'パスワード', with: 'password'
    # click_on 'ログイン'
    # visit root_path
    # all('a').each { |a| a[:href] }
    # binding.pry
    first(:link, '詳細').click
    click_on('買い物かごに入れる')
    click_on('park gallery')
    # second(:link, '詳細').click
    all(:link, '詳細')[3].click
    click_on('買い物かごに入れる')
    # find(:css, "input[type='email']").set("abs@c.com")
    # expect(page).to have_content 'クレジット決財'
    
    # find('waves-effect waves-light btn').click
    # click_on '詳細'
    # expect(page).to have_content '買い物かごに入れる'
    # save_screenshot

     end
  end
end
