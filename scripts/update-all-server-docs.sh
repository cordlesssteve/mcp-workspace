#!/bin/bash
# Update all hardcoded paths in server documentation
# Fixes references to old server structure in README, docs, etc.

set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SERVERS_DIR="$BASE_DIR/servers/your-servers"

echo "🔄 Updating Hardcoded Paths in Server Documentation"
echo "===================================================="
echo ""

# Count total files to update
total_files=$(find "$SERVERS_DIR" -type f \( -name "*.md" -o -name "*.ts" -o -name "*.js" \) ! -path "*/node_modules/*" -exec grep -l "custom-mcp-servers/.*-mcp" {} \; 2>/dev/null | wc -l)

echo "Found $total_files files with old paths"
echo ""

updated_count=0

# Update paths for each old server name
declare -A SERVER_RENAMES=(
    ["claude-telemetry-mcp"]="servers/your-servers/claude-telemetry"
    ["conversation-search-mcp"]="servers/your-servers/conversation-search"
    ["file-converter-mcp"]="servers/your-servers/file-converter"
    ["document-organizer-mcp"]="servers/your-servers/file-converter"  # This was renamed
    ["imthemap-mcp-server"]="servers/your-servers/imthemap"
    ["Layered-Memory"]="servers/your-servers/layered-memory"
    ["metaMCP-RAG"]="servers/your-servers/metaMCP-RAG"  # Keep capitals
    ["metamcp-rag-server"]="servers/your-servers/metamcp-rag-server"
    ["namecheap-mcp-server"]="servers/your-servers/namecheap"
    ["styxy-mcp-server"]="servers/your-servers/styxy"
    ["token-analyzer-mcp"]="servers/your-servers/token-analyzer"
    ["topolop-mcp-server"]="servers/your-servers/topolop"
    ["unity-mcp-server"]="servers/your-servers/unity"
    ["autogen-unified-mcp"]="servers/your-servers/autogen-unified"
    ["webby"]="servers/your-servers/webby"
    ["mitosis-mcp-server"]="servers/your-servers/mitosis"  # If archived
)

# Find and update all markdown, TypeScript, and JavaScript files
while IFS= read -r file; do
    echo "  Updating: ${file#$BASE_DIR/}"

    # Create backup
    cp "$file" "$file.backup-$(date +%Y%m%d)"

    # Apply all replacements
    for old_name in "${!SERVER_RENAMES[@]}"; do
        new_path="${SERVER_RENAMES[$old_name]}"

        # Update full paths
        sed -i "s|/projects/Utility/DEV-TOOLS/custom-mcp-servers/$old_name|/projects/Utility/DEV-TOOLS/custom-mcp-servers/$new_path|g" "$file"
        sed -i "s|/projects/Utility/custom-mcp-servers/$old_name|/projects/Utility/DEV-TOOLS/custom-mcp-servers/$new_path|g" "$file"
        sed -i "s|~/projects/Utility/DEV-TOOLS/custom-mcp-servers/$old_name|~/projects/Utility/DEV-TOOLS/custom-mcp-servers/$new_path|g" "$file"
        sed -i "s|custom-mcp-servers/$old_name|custom-mcp-servers/$new_path|g" "$file"

        # Update relative paths like cd commands
        sed -i "s|cd ~/projects/Utility/DEV-TOOLS/custom-mcp-servers/$old_name|cd ~/projects/Utility/DEV-TOOLS/custom-mcp-servers/$new_path|g" "$file"
        sed -i "s|cd /home/cordlesssteve/projects/Utility/DEV-TOOLS/custom-mcp-servers/$old_name|cd /home/cordlesssteve/projects/Utility/DEV-TOOLS/custom-mcp-servers/$new_path|g" "$file"
    done

    ((updated_count++))
done < <(find "$SERVERS_DIR" -type f \( -name "*.md" -o -name "*.ts" -o -name "*.js" \) ! -path "*/node_modules/*" -exec grep -l "custom-mcp-servers/.*-mcp\|custom-mcp-servers/Layered-Memory\|custom-mcp-servers/webby" {} \; 2>/dev/null)

echo ""
echo "✅ Updated $updated_count files"
echo ""
echo "📝 Backups created with .backup-$(date +%Y%m%d) extension"
echo ""
echo "To clean up backups after verification:"
echo "  find $SERVERS_DIR -name '*.backup-*' -delete"
echo ""
