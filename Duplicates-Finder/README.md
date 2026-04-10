# duplicatesFinder.sh

A simple interactive Bash script that scans a directory for duplicate files and lets you delete them one by one.

## How It Works

1. Walks the target directory recursively and groups files by size (quick pre-filter).
2. Computes a SHA-256 hash for each candidate file.
3. Groups files that share an identical hash — these are true duplicates.
4. For each duplicate group, keeps the first file untouched and prompts you to delete the rest interactively.

## Usage

```bash
./duplicatesFinder.sh <directory>
```

**Example:**

```bash
./duplicatesFinder.sh ~/Downloads
```

## Requirements

- Bash
- Standard Unix utilities: `find`, `awk`, `sort`, `uniq`, `xargs`, `sha256sum`

> `sha256sum` is available by default on Linux. On macOS, install it via `brew install coreutils` or replace it with `shasum -a 256`.

## Example Output

```
Scanning /home/user/Downloads ...

a3f1c2...  /home/user/Downloads/photo.jpg
  (keeping this one)
a3f1c2...  /home/user/Downloads/photo_copy.jpg
  Delete this file? [y/N]: y
  Deleted.

b9e4d7...  /home/user/Downloads/report.pdf
  (keeping this one)
b9e4d7...  /home/user/Downloads/report(1).pdf
  Delete this file? [y/N]: n
```

## Notes

- The script only **suggests** deletions — nothing is removed without your explicit `y` confirmation.
- Within each duplicate group, the **first file listed is always kept**. The order depends on how `find` traverses the filesystem.
- Operates on files only; directories and symlinks are ignored.

## License

MIT License — Copyright (c) 2026 Abdrahman Ezzat

See [LICENSE](./LICENSE) for the full text.
