#!/bin/bash

## This is an auto build script that can be used with the new RSPNVPK tool
## https://github.com/mrsteyk/RSPNVPK
## Add the VPK that your editing in a /dir folder
## eg. englishclient_mp_common.bsp.pak000_dir.vpk

cp ./dir/englishclient_mp_common.bsp.pak000_dir.vpk ./ & cp -R ./src ./englishclient_mp_common.bsp.pak000_dir
wait
RSPNVPK englishclient_mp_common.bsp.pak000_dir.vpk -s
wait
rm -rf ./englishclient_mp_common.bsp.pak000_dir
