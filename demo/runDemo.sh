sudo pkill lighttpd
pip3 install schedule

cd ~
rm -rf mONiTor fast5_exporter fastq_exporter minknow_exporter
git clone https://github.com/wkusmirek/mONiToR.git
git clone https://github.com/wkusmirek/fast5_exporter.git
git clone https://github.com/wkusmirek/fastq_exporter.git
git clone https://github.com/wkusmirek/minknow_exporter.git
git clone https://github.com/wkusmirek/Icarust.git

rm -rf /tmp/fastq; mkdir /tmp/fastq
cd ~/fastq_exporter/tests
python3 copyFiles.py &

rm -rf /tmp/fast5; mkdir /tmp/fast5
cd ~/fast5_exporter/tests
python3 copyFiles.py &

docker run --rm -it --network host -d wkusmirek/icarust:latest bash -c 'cargo run --release -- -c Profile_tomls/config_MN45789.toml -v'
docker run --rm -it --network host -d wkusmirek/icarust:latest bash -c 'cargo run --release -- -c Profile_tomls/config_MN83011.toml -v'

cd ~/mONiToR/node_exporter
sudo ./node_exporter &

cd ~/mONiToR
cp demo/docker-compose.yml .
sudo docker-compose -f demo/docker-compose.yml up &
#sudo docker-compose up &





sudo docker-compose down
sudo pkill python3
sudo pkill node_exporter
sudo pkill grafana
docker stop $(docker ps -q --filter ancestor=wkusmirek/icarust:latest )
