CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJD2KWOWTSUH7VYDA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'
  }
  config.fog_directory  = 'leosum'                          # required
end
