#!/bin/bash
# Update ~/.claude.json with new MCP server paths after restructuring
# This script updates the 5 path references found during analysis

set -euo pipefail

BACKUP_FILE=~/.claude.json.backup-restructure-$(date +%Y%m%d-%H%M%S)

echo "🔄 Updating Claude Code Configuration"
echo "======================================"
echo ""

# Create backup
echo "📦 Creating backup: $BACKUP_FILE"
cp ~/.claude.json "$BACKUP_FILE"

echo "✏️  Updating MCP server paths..."
echo ""

# Update each server path
# Pattern: /custom-mcp-servers/[OLD_NAME]/ -> /custom-mcp-servers/servers/your-servers/[NEW_NAME]/

sed -i 's|/custom-mcp-servers/metamcp-rag-server\(["/]\)|/custom-mcp-servers/servers/your-servers/metamcp-rag-server\1|g' ~/.claude.json
echo "  ✅ Updated metamcp-rag-server paths"

sed -i 's|/custom-mcp-servers/conversation-search-mcp\(["/]\)|/custom-mcp-servers/servers/your-servers/conversation-search\1|g' ~/.claude.json
echo "  ✅ Updated conversation-search paths"

sed -i 's|/custom-mcp-servers/metaMCP-RAG\(["/]\)|/custom-mcp-servers/servers/your-servers/metaMCP-RAG\1|g' ~/.claude.json
echo "  ✅ Updated metaMCP-RAG paths"

sed -i 's|/custom-mcp-servers/Layered-Memory\(["/]\)|/custom-mcp-servers/servers/your-servers/layered-memory\1|g' ~/.claude.json
echo "  ✅ Updated Layered-Memory → layered-memory paths"

echo ""
echo "✅ Configuration updated successfully!"
echo ""
echo "📄 Backup saved to:"
echo "   $BACKUP_FILE"
echo ""
echo "🔍 Verifying changes..."

# Verify the updates worked
if grep -q "servers/your-servers" ~/.claude.json; then
    echo "   ✅ New paths found in config"
else
    echo "   ⚠️  WARNING: New paths not found - check manually"
fi

# Check if old paths still exist
if grep -q "/custom-mcp-servers/metamcp-rag-server" ~/.claude.json 2>/dev/null | grep -v "servers/your-servers"; then
    echo "   ⚠️  WARNING: Some old paths may still exist"
else
    echo "   ✅ Old paths cleaned up"
fi

echo ""
echo "📝 Next steps:"
echo "  1. Restart Claude Code to reload configuration"
echo "  2. Test that MCP servers load correctly"
echo "  3. If issues occur, restore from backup:"
echo "     cp $BACKUP_FILE ~/.claude.json"
echo ""
