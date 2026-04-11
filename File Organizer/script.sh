#!/usr/bin/bash



mkdir -p images
for files in /home/zico/Downloads/*.jpg; do
    if [[ -f "$files" ]]; then
        mv "$files" /home/zico/Downloads/images
    fi
done

mkdir -p code
for files in /home/zico/Downloads/*.cpp /home/zico/Downloads/*.h /home/zico/Downloads/*.c /home/zico/Downloads/*.py /home/zico/Downloads/*.java /home/zico/Downloads/*.js /home/zico/Downloads/*.html /home/zico/Downloads/*.css; do
    if [[ -f "$files" ]]; then
        mv "$files" /home/zico/Downloads/code
    fi
done

mkdir -p text_files
for files in /home/zico/Downloads/*.txt; do
    if [[ -f "$files" ]]; then
        mv "$files" /home/zico/Downloads/text_files
    fi
done

mkdir -p pdf_files
for files in /home/zico/Downloads/*.pdf; do
    if [[ -f "$files" ]]; then
        mv "$files" /home/zico/Downloads/pdf_files
    fi
done

mkdir -p apps
for files in /home/zico/Downloads/*.zip /home/zico/Downloads/*.rpm; do
    if [[ -f "$files" ]]; then
        mv "$files" /home/zico/Downloads/apps
    fi
done

mkdir -p vids
for files in /home/zico/Downloads/*.mov /home/zico/Downloads/*.mp4 ; do
    if [[ -f "$files" ]]; then
        mv "$files" /home/zico/Downloads/vids
    fi
done

mkdir -p pptx
for files in /home/zico/Downloads/*.ppt /home/zico/Downloads/*.pptx ; do
    if [[ -f "$files" ]]; then
        mv "$files" /home/zico/Downloads/pptx
    fi
done

mkdir -p songs
for files in /home/zico/Downloads/*.mp3 /home/zico/Downloads/*.ogg ; do
    if [[ -f "$files" ]]; then
        mv "$files" /home/zico/Downloads/songs
    fi
done