#
# Copyright:: Copyright (c) Chef Software Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require "spec_helper"

describe Chef::Resource::MacosPkg do
  let(:resource) { Chef::Resource::MacosPkg.new("fakey_fakerton") }

  it "has a resource name of :macos_pkg" do
    expect(resource.resource_name).to eql(:macos_pkg)
  end

  it "sets the default action as :install" do
    expect(resource.action).to eql([:install])
  end

  it "supports :install action" do
    expect { resource.action :install }.not_to raise_error
  end

  it "target property defaults to /" do
    expect(resource.target).to eql("/")
  end
end
