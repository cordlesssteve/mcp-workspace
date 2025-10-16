#!/bin/bash
# MCP Configuration Generator
# Generates Claude Code MCP settings JSON from available servers

set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

cat <<EOF
{
  "mcpServers": {
EOF

first=true
for server in "$BASE_DIR/servers/your-servers"/*; do
    [ -d "$server" ] || continue

    server_name=$(basename "$server")

    # Find the entry point (dist/index.js for Node, or Python server.py)
    if [ -f "$server/dist/index.js" ]; then
        entry_point="$server/dist/index.js"
        command="node"
    elif [ -f "$server/dist/src/index.js" ]; then
        entry_point="$server/dist/src/index.js"
        command="node"
    elif [ -f "$server/src/server.py" ]; then
        entry_point="$server/src/server.py"
        # Try to find venv python first
        if [ -f "$server/venv/bin/python" ]; then
            command="$server/venv/bin/python"
        else
            command="python3"
        fi
    else
        # Skip servers without clear entry point
        continue
    fi

    # Add comma separator for all but first entry
    if [ "$first" = true ]; then
        first=false
    else
        echo ","
    fi

    cat <<EOF
    "$server_name": {
      "command": "$command",
      "args": ["$entry_point"]
    }
EOF
done

# Add external servers if they exist
if [ -d "$BASE_DIR/servers/external-servers" ]; then
    for server in "$BASE_DIR/servers/external-servers"/*; do
        [ -d "$server" ] || continue

        server_name=$(basename "$server")

        if [ -f "$server/dist/index.js" ]; then
            entry_point="$server/dist/index.js"

            if [ "$first" = true ]; then
                first=false
            else
                echo ","
            fi

            cat <<EOF
    "external-$server_name": {
      "command": "node",
      "args": ["$entry_point"]
    }
EOF
        fi
    done
fi

cat <<EOF

  }
}
EOF
