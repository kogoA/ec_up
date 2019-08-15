if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_S3_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_S3_SECRET_ACCESS_KEY'],
      #S3のリージョン #ap-northeast-1はアジアパシフィック(東京)
      region: 'ap-northeast-1'
    }
    # S3のバケット名
    config.fog_directory  = 'user-registrator'
    # S3に保存しておく期間
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
  end
end