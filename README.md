# README
## Demo

![ダミー画像](https://user-images.githubusercontent.com/45598368/63143720-a9b6ce00-c02a-11e9-8fed-e83b70543c2b.gif "park gallery")

## AWS構成図
![aws](https://user-images.githubusercontent.com/45598368/65215797-c17de800-dae9-11e9-9135-f877e6d70086.png)  

# URL:http://ec.parkgallery.site/

* Description  
 ECサイトアプリです。  
 Adminが商品の登録(商品は登録済)を行い、Userは商品の購入が出来ます。
 Adminは売上管理機能があります。  

* Functions  
・ユーザー管理機能(Devise)  
・日本語化(i18n)  
・画像アップロード機能(CarrierWave,Mini_magic)  
・クレジット決済機能(Stripe)  
・売上管理機能(当月,全履歴 )  
・ランダム商品ID作成機能(Hashid-rails)  
・ほしい物リスト機能  
・問い合わせ機能  

* Infrastructure  
AWS  
・EC2  
・RDS  
・VPC  
・ROUTE53  

* Test  
・RSpec  
・統合テスト(feature spec)  

* Versions  
・ruby 2.5.1  
・Rails 5.2.3  
・Bundler 2.0.1

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
・Favorite  

* Usage(local)  
●商品を購入方法
Userでログインします。  
1.http://localhost:3000/ ←home画面から"ログイン"をクリック、下記を入力後  
"ログイン"ボタンをクリック or "かんたんログイン"ボタンをクリックでログインする  
メールアドレス:foo@foo.com  
パスワード:password  
2.一覧画面で詳細をクリック  
3.買い物かごに入れるをクリック→「カード支払い」ボタンをクリック  
4.商品のお支払い画面で下記を入力  
メールアドレス:foo@foo.com  
カード番号:4242 4242 4242 4242  
MM/YY:02 / 2022  
cvc:2222
