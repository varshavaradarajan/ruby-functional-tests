##########################################################################
# Copyright 2016 ThoughtWorks, Inc.
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
##########################################################################

step 'SmokeConfiguration - setup' do
  secure_configuration.setup 'basic-secure-cruise-config.xml', 'password.properties'
end

step 'Basic Configuration - setup' do
  basic_configuration.setup 'basic-cruise-config.xml'
end

step 'Secure Configuration - setup' do
  secure_configuration.setup 'secure-cruise-config.xml', 'password.properties'
end

step 'Multiple agents Configuration - setup' do
  basic_configuration.setup 'multiple-agents-cruise-config.xml'
end

step 'Config repos Configuration - setup' do
  basic_configuration.setup 'with-config-repo-cruise-config.xml'
end

step 'Config repo git repository - setup' do
  basic_configuration.setup 'with-config-repo-cruise-config.xml'
end

step 'AuthPluginsConfiguration - setup' do
  secure_configuration.setup 'auth-plugins-config.xml', 'password.properties'
end

step 'With no users - setup' do
  basic_configuration.remove_all_users
end

step 'Enable new dashboard toggles' do
  basic_configuration.enable_toggle('quicker_dashboard_key')
  basic_configuration.enable_toggle('new_dashboard_page_default')
end

step 'Disable new dashboard toggles' do
  basic_configuration.disable_toggle('quicker_dashboard_key')
  basic_configuration.disable_toggle('new_dashboard_page_default')
end
