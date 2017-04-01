#!/bin/bash
echo '--------------->>>>>'
echo '<<<<<---------------'
echo 'hello world!'
echo '--------------->>>>>'
echo '<<<<<---------------'
echo 'please see README.md'
echo 'please see README.md'
echo 'please see README.md'
echo '--------------->>>>>'
echo '<<<<<---------------'


source update_branch.sh 'GXNetworking' 'develop'
source update_branch.sh 'GXTopContainerView' 'develop'
source update_branch.sh 'GXRefresh' 'develop'


echo '拉取三方库!'

pod install

echo '拉取代码成功...'

