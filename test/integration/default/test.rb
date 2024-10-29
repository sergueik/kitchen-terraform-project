control 'gcs-bucket' do
    impact 1.0
    title 'Check if the GCS bucket exists'
    describe google_storage_bucket(name: "#{input('project_id')}-bucket") do
      it { should exist }
    end
  end