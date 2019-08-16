# README

![ダミー画像](https://user-images.githubusercontent.com/45598368/63143720-a9b6ce00-c02a-11e9-8fed-e83b70543c2b.gif "park gallery")

* Description  
 ECサイトアプリです。  
 Adminが商品の登録(商品は登録済)を行い、Userは商品の購入が出来ます。
 Adminは売上管理機能があります。

* Versions  
ruby 2.5.1  
Rails 5.2.3  
Bundler 2.0.1

* Dependency  
・Devise  
・Stripe  
・Carrierwave  
・Mini_magitc  
・Hashid-rails  
・Simple_form  
・Materialize-sass  
・Devise_materialize  
・Bootstrap  

* Database creation  
・Admin  
・User  
・Basket  
・Product  
・PurchaseRecord  
・PurchaseRecordProduct  

* Usage  
●商品を登録
Adminでログインします。  
1.http://localhost:3000/admins/sign_in にアクセスしログインする
Email:aaaaaaaa@gmail.com
Password:password  
2.新規商品の追加を選択し商品を登録する  
3.http://localhost:3000/ (park galleryをクリック)にアクセスし最後の欄に登録が反映されます  
●商品を購入方法
Userでログインします。  
1.http://localhost:3000/users/sign_in にアクセスしログインする
メールアドレス:foo@foo.com
パスワード:password  
2.一覧画面で詳細をクリック  
3.買い物かごに入れるをクリック→「カード支払い」ボタンをクリック  
4.商品のお支払い画面で下記を入力  
メールアドレス:abc@gmail.com  
カード番号:4242 4242 4242 4242  
MM/YY:02 / 2022  
cvc:2222
