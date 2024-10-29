control 'gcs-bucket' do
    impact 1.0
    title 'Check if the GCS bucket exists'
    describe google_storage_bucket(name: "#{input('bucket_name')}") do
      it { should exist }
      let(:x) {subject}
      x.instance_variables.each do |var|
        puts "#{var}: #{allowed_rules[0].instance_variable_get(var)}"
      end
 
    end
  end