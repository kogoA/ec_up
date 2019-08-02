# README

* Ruby&Rails version
ruby 2.5.1
Rails 5.2.3

* Dependency
Devise
Stripe
Carrierwave
Mini_magitc
Hashid-rails

* Database creation
・Admin
・User
・Basket
・BasketProduct
・Product 
・PurchaseRecord
・PurchaseRecordProduct

* Usage
●商品を登録
Adminでログインします。
1.http://localhost:3000/admins/sign_inにアクセスしログインする
Email:aaaaaaaa@gmail.com
Password:password
2.http://localhost:3000/admins/products/newにアクセスし商品を登録する
3.http://localhost:3000/にアクセスし最後の欄に登録が反映されます

●商品を購入方法
Userでログインします。
1.http://localhost:3000/users/sign_inにアクセスしログインする
メールアドレス:hoge@hoge.com
パスワード:Kogo1983
2.一覧画面で詳細をクリック
3.買い物かごに入れるをクリック→Pay with cardをクリック
4.商品のお支払い画面で下記を入力
メールアドレス:abc@gmail.com
カード番号:4242 4242 4242 4242
MM/YY:02 / 2022
cvc:2222
