CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAI3P37UGJSLWSSQ2Q',                        # required
    aws_secret_access_key: ENV['SECRET_KEY'],                        # required
    region:                'ap-northeast-1'
  }
  config.fog_directory  = ENV['S3_BUCKET']                          # required
end
