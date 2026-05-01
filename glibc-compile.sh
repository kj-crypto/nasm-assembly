#!/usr/bin/env bash
sysroot=$(pwd)/glibc-i386
mkdir -p $sysroot

printf '#!/usr/bin/env bash\nset -x\n'"sysroot=$sysroot\n" > glibc-i386/configure
cat << 'EOF' >> glibc-i386/configure
echo "Configuring glibc for i386..."
dpkg --add-architecture i386
apt update
apt install -y wget build-essential bison gawk texinfo git python3 gperf g++-multilib gcc-multilib libc6-dev-i386 linux-headers-generic
cd /tmp
wget http://ftp.gnu.org/gnu/glibc/glibc-2.35.tar.gz
tar -xzf glibc-2.35.tar.gz
cd glibc-2.35
mkdir build
cd build
../configure --prefix=$sysroot --host=i686-linux-gnu --with-headers=/usr/include CC="gcc -m32" CXX="g++ -m32" && \
make && make install DESTDIR=/glibc && \
cd /glibc && mv ${sysroot#*/}/* . && rm -rf $(echo $sysroot | cut -d'/' -f2) && chown -R 1000:1000
echo "glibc-i386 configured successfully"
EOF

docker run -t --rm -v "$sysroot:/glibc" -w /glibc ubuntu:22.04 /bin/bash configure