if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIAYM2BFNBRYEL42HOU',
      aws_secret_access_key: '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',
      #S3のリージョン #ap-northeast-1はアジアパシフィック(東京)
      region: 'ap-northeast-1'
    }
    # S3のバケット名
    config.fog_directory  = 'user-registrator'
    # S3に保存しておく期間
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
  end
end