#!/bin/bash

# librispeech_subdir=/data/rigel1/corpora/LibriSpeech/LibriSpeech/test-clean/ # path to LibriSpeech test-clean
librispeech_subdir=/data/rigel1/corpora/LibriSpeech/LibriSpeech/dev-clean/ # path to LibriSpeech test-clean
noise_dir=/data/work95/marc/wham/wham_noise/tt # path to test WHAM noises
metadata_dir=./metadata
out_dir=/home/jpeng/ntt/work/Data/sparse_libri_def/dev # output directory
stage=0
fs=16000
out_json=$metadata_dir/dev/metadata.json

set -e
mkdir -p $out_dir

python scripts/make_mixtures.py $out_json $librispeech_subdir $out_dir --noise_dir $noise_dir --rate $fs