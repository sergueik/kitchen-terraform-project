control "bucket-name" do
    describe google_storage_bucket(name: input('bucket_name')) do
      it { should exist }
  
      actual_bucket = subject.bucket  # Store the actual bucket value
      puts "Actual bucket: #{actual_bucket}"  # Print the actual value
  
      its('bucket') { should cmp 'like to fail' }  # This should fail if the value is different
    end
  end