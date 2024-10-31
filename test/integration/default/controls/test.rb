#require_controls 'inspec-gcp'
# require_controls 'inspec-gcp'
# require 'inspec-gcp'
# https://veritas1.hashnode.dev/demystifying-the-load-path-in-ruby-a-comprehensive-guide
#  $LOAD_PATH.unshift('/home/kouzmine_serguei/kitchen-terraform-project/test/integration/vendor/inspec-gcp-main/libraries')

# require_relative '../vendor/inspec-gcp-main/libraries/google_storage_bucket'
# require 'inspec/utils'
# require 'google_storage_bucket'
# require 'yaml'
# attributes = Inspec::Utils.load_yaml('../attributes.yml')
# attributes = YAML.load_yaml('../attributes.yml')
# gcp_project_id = attributes['gcp_project_id']
# bucket_name = attributes['bucket_name']
#  inspec exec test/integration/default/ -t gcp:// --input-file attributes.yml  
control 'google-storage-bucket' do
   describe google_storage_bucket(name: input('bucket_name')) do
      it { should exist }
  
      # actual_bucket = subject.bucket  # Store the actual bucket value
      # puts "Actual bucket: #{actual_bucket}"  # Print the actual value
      #  'bucket'  is undefined
      its('id') { should cmp 'spheric-alcove-430818-f9-test' }  # This should fail if the value is different
    end
  end