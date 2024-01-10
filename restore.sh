#!/bin/bash

backup_dir="/root/backups"
backup_files=("$backup_dir"/*.tar.gz)

for backup_file in "${backup_files[@]}"; do
    command="cyberpanel restoreBackup --fileName $backup_file"
    echo "Running command: $command"
    $command
done

echo "Tüm yedek dosyaları geri yüklendi."
