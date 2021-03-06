# encoding: UTF-8
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Set to some text value if you want templated config files
# to contain a custom banner at the top of the written file
default['kube']['custom_template_banner'] = '# This file autogenerated by Chef
# Do not edit, changes will be overwritten'

# etcd
default['etcd']['host'] = ['127.0.0.1']
default['etcd']['package'] = 'https://github.com/coreos/etcd/releases/download/v0.4.6/etcd-v0.4.6-linux-amd64.tar.gz'

# kubernetes master
default['kube']['api']['host'] = '127.0.0.1'
default['kube']['api']['bind-address'] = '0.0.0.0'
default['kube']['api']['bind-port'] = '8080'
default['kube']['api']['args'] = ''
default['kube']['service']['addresses'] = '10.254.0.0/16'
default['kube']['controller-manager']['args'] = ''
default['kube']['scheduler']['args'] = ''

# kubernetes minions
default['kube']['kubelet']['machines'] = ['127.0.0.1', '127.0.0.2']
default['kube']['kubelet']['bind-address'] = '0.0.0.0'
default['kube']['kubelet']['bind-port'] = '10250'
default['kube']['kubelet']['args'] = ''
default['kube']['proxy']['args'] = ''

default['kube']['interface'] = 'eth0'
default['kube']['package'] = 'https://github.com/GoogleCloudPlatform/kubernetes/releases/download/v0.5.4/kubernetes.tar.gz'

# related packages
default['kube']['go']['package'] = 'go'
default['kube']['docker']['package'] = 'docker'
default['kube']['openvswitch']['package'] = 'openvswitch'
