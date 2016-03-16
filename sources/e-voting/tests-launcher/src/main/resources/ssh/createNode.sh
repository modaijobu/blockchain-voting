cd /home/ubuntu/e-voting/build/;
mkdir $1;
cd $1;
cp ../libs/client.jar ./;
cp ../../src/e-voting/sources/e-voting/client/src/main/resources/client.properties ./;
mkdir ./conf;
cp ../../src/e-voting/sources/e-voting/conf/nxt-default.properties ./conf/;
mkdir ./gui-public;
cp -r ../../src/e-voting/sources/e-voting/gui-public/* ./gui-public;
cp -r ./gui-public/app/default-server-properties.js ./gui-public/app/server-properties.js;
cd ./gui-public;
npm install;
npm install -g bower;
bower update;