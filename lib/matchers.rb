# cookbook/libraries/matchers.rb

if defined?(ChefSpec)
  ChefSpec.define_matcher :ssh_keygen

  def create_ssh_key(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:ssh_keygen, :create, resource_name)
  end
end
