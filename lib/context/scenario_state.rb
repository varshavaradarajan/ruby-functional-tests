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

module Context
  class ScenarioState
    def initialize
      @scenario_store = Gauge::DataStoreFactory.scenario_datastore
    end

    def add_pipeline(initial_name, replaced_name)
      @scenario_store.put initial_name, replaced_name
    end

    def get_pipeline(original_name)
      @scenario_store.get original_name
    end

    def set_current_user(user)
      @scenario_store.put 'current_user', user
    end

    def current_user
      @scenario_store.get 'current_user'
    end

    def set_current_pipeline(pipeline)
      @scenario_store.put 'current_pipeline', pipeline
    end

    def current_pipeline
      @scenario_store.get 'current_pipeline'
    end
  end
end
