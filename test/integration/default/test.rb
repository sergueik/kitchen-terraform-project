control 'gcs-bucket' do
    impact 1.0
    title 'Check if the GCS bucket exists'
    describe google_storage_bucket(name: "#{input('bucket_name')}d") do
      it { should exist }
    end
  end