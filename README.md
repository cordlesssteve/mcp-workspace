# Custom MCP Servers Collection

**One-command setup for all my Claude Code MCP servers + curated external servers.**

This is a meta-repository that uses git submodules to provide a convenient way to install and manage all your custom MCP servers in one place, while maintaining each server as an independent public GitHub repository.

## Quick Start

```bash
git clone --recurse-submodules git@github.com:cordlesssteve/custom-mcp-servers.git
cd custom-mcp-servers
./setup.sh
```

That's it! All MCP servers are installed and built.

## What's Included

### Your MCP Servers (14)

Located in `servers/your-servers/`:

- **autogen-unified** - Unified AutoGen MCP integration
- **claude-telemetry** - Usage tracking and analytics
- **conversation-search** - Search across Claude conversations
- **file-converter** - PDF to markdown conversion
- **imthemap** - Code dependency visualization
- **layered-memory** - Semantic memory and knowledge graphs
- **metaMCP-RAG** - RAG-powered MCP tool discovery
- **MMR-analytics-server** - Meta MCP server with RAG
- **namecheap** - Namecheap domain management
- **styxy** - Port allocation and service management
- **token-analyzer** - Token usage analysis
- **topolop** - Code topology analysis
- **unity** - Unity game engine integration
- **webby** - Web automation and testing

### External MCP Servers (Optional)

You can add community/Anthropic MCP servers to `servers/external-servers/` by adding them as submodules:

```bash
git submodule add https://github.com/example/mcp-server servers/external-servers/server-name
```

## Individual Installation

Each MCP server is also available as a standalone repository:

- [autogen-unified-mcp](https://github.com/cordlesssteve/autogen-unified-mcp)
- [claude-telemetry-mcp](https://github.com/cordlesssteve/claude-telemetry-mcp)
- [conversation-search-mcp](https://github.com/cordlesssteve/conversation-search-mcp)
- [file-converter-mcp](https://github.com/cordlesssteve/file-converter-mcp)
- [imthemap-mcp-server](https://github.com/cordlesssteve/imthemap-mcp-server)
- [layered-memory-mcp](https://github.com/cordlesssteve/layered-memory-mcp)
- [metaMCP-RAG](https://github.com/cordlesssteve/metaMCP-RAG)
- [MMR-analytics-server](https://github.com/cordlesssteve/MMR-analytics-server)
- [namecheap-mcp-server](https://github.com/cordlesssteve/namecheap-mcp-server)
- [styxy-mcp-server](https://github.com/cordlesssteve/styxy-mcp-server)
- [token-analyzer-mcp](https://github.com/cordlesssteve/token-analyzer-mcp)
- [topolop-mcp-server](https://github.com/cordlesssteve/topolop-mcp-server)
- [unity-mcp-server](https://github.com/cordlesssteve/unity-mcp-server)
- [webby-mcp](https://github.com/cordlesssteve/webby-mcp)

## Configuration

### Automatic Configuration

Generate MCP settings automatically:

```bash
./scripts/generate-mcp-config.sh > ~/.config/claude-code/mcp_settings.json
```

### Manual Configuration

Add servers to your Claude Code configuration (`~/.claude.json` or MCP settings):

```json
{
  "mcpServers": {
    "conversation-search": {
      "command": "node",
      "args": ["/path/to/custom-mcp-servers/servers/your-servers/conversation-search/dist/index.js"]
    },
    "claude-telemetry": {
      "command": "node",
      "args": ["/path/to/custom-mcp-servers/servers/your-servers/claude-telemetry/dist/index.js"]
    }
  }
}
```

## Updating

Pull latest changes from all submodules:

```bash
git pull
git submodule update --remote
./setup.sh
```

## Development

### Working on a Specific Server

```bash
cd servers/your-servers/[server-name]
# Make changes
npm run build  # or npm test, etc.
git commit -m "Your changes"
git push
```

### Adding a New Server

```bash
# Add your new server as a submodule
git submodule add https://github.com/cordlesssteve/new-mcp-server.git servers/your-servers/new-server

# Commit the submodule addition
git add .gitmodules servers/your-servers/new-server
git commit -m "Add new-server to collection"
git push
```

### Removing a Server

```bash
# Remove the submodule
git submodule deinit servers/your-servers/old-server
git rm servers/your-servers/old-server
git commit -m "Remove old-server from collection"
```

## Structure

```
custom-mcp-servers/                 # Private meta-repo
├── .git/                           # Tracks submodule configuration
├── .gitmodules                     # Submodule definitions
├── README.md                       # This file
├── setup.sh                        # One-command installation
├── servers/
│   ├── your-servers/               # Your MCP servers (git submodules)
│   │   ├── claude-telemetry/       → points to public repo
│   │   ├── conversation-search/    → points to public repo
│   │   └── ... (12 more)
│   └── external-servers/           # 3rd party MCP servers (optional)
│       ├── filesystem/             → external repo
│       └── github/                 → external repo
└── scripts/
    ├── generate-mcp-config.sh      # Generate MCP settings JSON
    └── update-claude-config.sh     # Update existing config paths
```

## Meta-Repository Pattern

This repository uses the meta-repository pattern:

**Benefits:**
- ✅ One-command setup for new machines
- ✅ Curated collection with version pinning
- ✅ Individual servers remain public and independently installable
- ✅ Easy to add external/3rd party servers
- ✅ Private convenience layer for your workflow

**vs. Individual Repos:**
- Each server maintains its own GitHub repo for public distribution
- This meta-repo provides convenient bundled installation
- Users can install either way: individual servers or full collection

**vs. True Monorepo:**
- Servers are not merged into one repo
- Each maintains independent git history
- Submodules track specific commits (version pinning)
- Changes made in individual repos, then pulled here

## Troubleshooting

### Submodules not initialized

```bash
git submodule update --init --recursive
```

### Build failures

```bash
# Clean rebuild
rm -rf servers/your-servers/*/node_modules
./setup.sh
```

### Config not loading

Check your Claude Code configuration references the correct paths:

```bash
grep "custom-mcp-servers" ~/.claude.json
```

### Restore old configuration

If issues arise after restructure:

```bash
# List available backups
ls -la ~/.claude.json.backup-*

# Restore specific backup
cp ~/.claude.json.backup-restructure-TIMESTAMP ~/.claude.json
```

## Maintenance Strategy

### Your Public Repos (Unchanged)
- Continue developing in individual server repos
- Push changes to public GitHub repos
- Users install individually as before

### Meta-Repo (This Repo)
- Pull updates: `git submodule update --remote`
- Test all servers work together
- Commit submodule version updates
- Private convenience layer

### Workflow
1. Develop in individual server repo (public)
2. Push changes to public repo
3. Update meta-repo: `git submodule update --remote --merge`
4. Test everything works together
5. Commit meta-repo with new submodule versions

## License

Each MCP server has its own license. See individual repositories for details.

## Contributing

Contributions to individual servers should be made to their respective repositories.

---

**Meta-Repo Status**: ✅ Active
**Total Servers**: 14 (+ extensible with external servers)
**Pattern**: Git submodules + setup automation
