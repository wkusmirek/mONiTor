pip3 install schedule

cd ~
rm -rf mONiTor fast5_exporter fastq_exporter minknow_exporter
git clone https://github.com/wkusmirek/mONiToR.git
git clone https://github.com/wkusmirek/fast5_exporter.git
git clone https://github.com/wkusmirek/fastq_exporter.git
git clone https://github.com/wkusmirek/minknow_exporter.git

pkill python3

rm -rf /tmp/fastq; mkdir /tmp/fastq
cd ~/fastq_exporter/tests
python3 copyFiles.py &

rm -rf /tmp/fast5; mkdir /tmp/fast5
cd ~/fast5_exporter/tests 
python3 copyFiles.py &

cd ~/mONiToR/demo
sudo docker-compose up
