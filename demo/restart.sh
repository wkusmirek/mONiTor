pkill python3
pkill minknow_exporter
pkill fast5_exporter
pkill fastq_exporter

rm -rf /tmp/fastq; mkdir /tmp/fastq
cd /home/braster/fastq_exporter/tests
python3 copyFiles.py &

rm -rf /tmp/fast5; mkdir /tmp/fast5
cd /home/braster/fast5_exporter/tests
python3 copyFiles.py &

docker stop $(docker ps -q --filter ancestor=wkusmirek/icarust:latest )
docker run --rm -it -d --network host wkusmirek/icarust:latest bash -c 'cargo run --release -- -c Profile_tomls/config.toml -v'
