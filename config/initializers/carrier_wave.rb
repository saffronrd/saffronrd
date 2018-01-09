if Rails.env.production?
	CarrierWave.configure do |config|
		config.fog_credentials = {
			:provider => 'AWS',
			:aws_access_key_id => ENV['AKIAJPRRB7OYU75X2EBQ'],
			:aws_secret_access_key => ENV['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']
		} 

		config.fog_directory = ENV['saffronimages']
	end
end