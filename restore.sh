#!/bin/bash

# Dotfiles 恢复脚本
# 自动生成，请谨慎使用！

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "开始恢复 dotfiles..."
echo "源目录: $DOTFILES_DIR"
echo "目标目录: $HOME"

read -p "确定要恢复配置吗？这可能会覆盖现有配置 [y/N]: " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "取消恢复"
    exit 1
fi

# 创建备份
BACKUP_DIR="$HOME/dotfiles_restore_backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$BACKUP_DIR"

# 恢复配置文件
find "$DOTFILES_DIR" -type f -name ".*" -o -name "*" | while read -r file; do
    if [[ "$file" != *".git"* && "$file" != *"restore.sh" && "$file" != *".gitignore" ]]; then
        rel_path="${file#$DOTFILES_DIR/}"
        target_path="$HOME/$rel_path"

        # 备份原文件
        if [ -e "$target_path" ]; then
            cp -r "$target_path" "$BACKUP_DIR/$rel_path" 2>/dev/null || true
        fi

        # 创建目录并复制
        mkdir -p "$(dirname "$target_path")"
        cp -r "$file" "$target_path"
        echo "恢复: $rel_path"
    fi
done

echo "恢复完成！原配置备份在: $BACKUP_DIR"
