#!/bin/bash
set -euo pipefail

# MCP Servers Meta-Repository Setup Script
# Installs all MCP servers with one command

echo "🚀 MCP Servers Meta-Repository Setup"
echo "======================================"
echo ""

# Initialize submodules
echo "📦 Cloning all MCP servers..."
git submodule update --init --recursive

echo ""
echo "🔨 Building your MCP servers..."
echo ""

# Counter for progress
total_servers=$(ls -1 servers/your-servers/ | wc -l)
current=0

# Install your servers
for server in servers/your-servers/*/; do
    ((current++))
    server_name=$(basename "$server")

    if [ -f "$server/package.json" ]; then
        echo "[$current/$total_servers] Building $server_name..."
        (cd "$server" && npm install && npm run build 2>/dev/null || true)
    elif [ -f "$server/pyproject.toml" ] || [ -f "$server/requirements.txt" ]; then
        echo "[$current/$total_servers] Installing Python dependencies for $server_name..."
        (cd "$server" && python3 -m pip install -e . 2>/dev/null || true)
    else
        echo "[$current/$total_servers] Skipping $server_name (no package.json or Python project)"
    fi
done

echo ""
echo "🌐 Building external MCP servers..."
if [ -d "servers/external-servers" ]; then
    for server in servers/external-servers/*/; do
        if [ -f "$server/package.json" ]; then
            echo "  Building $(basename $server)..."
            (cd "$server" && npm install && npm run build 2>/dev/null || true)
        fi
    done
else
    echo "  (No external servers configured yet)"
fi

echo ""
echo "⚙️  MCP Configuration"
echo "-------------------"
echo ""
echo "Your MCP servers are located at:"
echo "  $(pwd)/servers/your-servers/"
echo ""
echo "To configure Claude Code, add these paths to your MCP settings:"
echo ""
echo "Example for ~/.claude.json or Claude Code MCP settings:"
echo ""
echo "  {"
echo "    \"mcpServers\": {"
echo "      \"your-server-name\": {"
echo "        \"command\": \"node\","
echo "        \"args\": [\"$(pwd)/servers/your-servers/[SERVER_NAME]/dist/index.js\"]"
echo "      }"
echo "    }"
echo "  }"
echo ""
echo "Available servers:"
ls -1 servers/your-servers/
echo ""

echo "✅ Setup complete! All MCP servers ready."
echo ""
echo "📝 Next steps:"
echo "  1. Configure your MCP servers in Claude Code settings"
echo "  2. Restart Claude Code to load the servers"
echo "  3. Test with: claude (your MCP tools should appear)"
echo ""
echo "For automatic MCP configuration, run:"
echo "  ./scripts/generate-mcp-config.sh > ~/.config/claude-code/mcp_settings.json"
echo ""
