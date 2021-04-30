require_relative "../lib/nx-yaml"

RSpec.describe Nx do
  describe "# basic test" do
    it "load yml with hash data" do
      path = File.join(File.dirname(__FILE__), "template_with_var.yml")
      res = Nx::Yaml.load(path, { host: "0.0.0.0" })
      puts res
      expect(res).to eq(
        "name" => "nx-yml",
        "version" => "0.1.0",
        "env" => { "home" => ENV["HOME"] },
        "host" => "0.0.0.0",
      )
    end

    it "load yml without data" do
      path = File.join(File.dirname(__FILE__), "template_pure.yml")
      res = Nx::Yaml.load(path)
      expect(res).to eq(
        "name" => "nx-yml",
        "version" => "0.1.0",
      )
    end
  end
end
