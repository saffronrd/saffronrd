if Rails.env.production?
	 CarrierWave.configure do |config|
	  config.fog_provider = 'fog-aws'                        
	  config.fog_credentials = {
	    provider:              'AWS',                        
	    aws_access_key_id:     'AKIAJPRRB7OYU75X2EBQ',                        
	    aws_secret_access_key: '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',                        
	  }
	  config.fog_directory  = Rails.env                         
	end
end