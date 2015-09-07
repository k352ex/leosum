CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJOMUA6V7RGEQ6GTQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'
  }
  config.fog_directory  = 'leosum'                          # required
end
