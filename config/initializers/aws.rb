=begin
AWS::S3::Base.establish_connection!(
	:access_key_id	=> ENV['S3_KEY'],
	:secret_access_key => ENV[S3_SECRET']
)
=end

Aws.config.update({
  region: 'us-east-1',
  credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']),
})

S3_BUCKET = Aws::S3::Resource.new.bucket(ENV['S3_BUCKET'])