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
