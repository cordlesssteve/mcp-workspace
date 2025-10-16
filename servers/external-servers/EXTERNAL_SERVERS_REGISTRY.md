# External MCP Servers Registry

**Last Updated**: 2025-10-16
**Total External Servers**: 7
**Status**: 7/7 Active

---

## Overview

This registry tracks all external Model Context Protocol (MCP) servers that are integrated into your MCP workspace. External servers are those maintained by external parties (Anthropic, third-party developers) rather than custom-developed servers.

**Legend:**
- 🔗 **Local Symlink** - Server is available locally via symlink
- 📦 **NPM-Based** - Installed/accessed via NPM or NPX
- 🌐 **Remote-Only** - Only reference information available locally

---

## Active External Servers

### 1. Filesystem Operations
- **Type**: 🌐 Remote-Only (Anthropic)
- **Repository**: https://github.com/modelcontextprotocol/servers/tree/main/src/filesystem
- **Status**: ✅ Active
- **Tools**: 14
- **Description**: Provides filesystem operations (read, write, list, search)
- **Integration**: Via metaMCP-RAG orchestrator
- **Last Verified**: 2025-10-01

---

### 2. Git Operations
- **Type**: 🌐 Remote-Only (Anthropic)
- **Repository**: https://github.com/modelcontextprotocol/servers/tree/main/src/git
- **Status**: ✅ Active
- **Tools**: 13
- **Description**: Git repository operations (status, diff, commit, branch, log, etc.)
- **Integration**: Via metaMCP-RAG orchestrator
- **Tech Stack**: Python with UV environment
- **Last Verified**: 2025-10-02

---

### 3. Firebase
- **Type**: 🌐 Remote-Only (Anthropic)
- **Repository**: https://github.com/modelcontextprotocol/servers/tree/main/src/firebase
- **Status**: ✅ Active
- **Tools**: 55 (largest external server)
- **Description**: Firebase integration and deployment management
- **Integration**: Via metaMCP-RAG orchestrator (NPX wrapper for firebase-tools)
- **Last Verified**: 2025-10-01

---

### 4. Netlify
- **Type**: 🌐 Remote-Only (Anthropic)
- **Repository**: https://github.com/modelcontextprotocol/servers/tree/main/src/netlify
- **Status**: ✅ Active
- **Tools**: 6
- **Description**: Netlify deployment and site management
- **Integration**: Via metaMCP-RAG orchestrator
- **Last Verified**: 2025-10-01

---

### 5. Playwright Browser Automation
- **Type**: 📦 NPM-Based
- **Package**: `@executeautomation/playwright-mcp-server`
- **Repository**: https://github.com/executeautomation/playwright-mcp-server
- **Status**: ✅ Active
- **Tools**: 32
- **Description**: Browser automation, testing, and web scraping
- **Installation**: `npx -y @executeautomation/playwright-mcp-server`
- **Integration**: Via metaMCP-RAG orchestrator
- **Last Verified**: 2025-10-02

---

### 6. Storybook Component Library
- **Type**: 📦 NPM-Based
- **Package**: `storybook-mcp`
- **Repository**: https://github.com/storybook-mcp/storybook-mcp
- **Status**: ✅ Active
- **Tools**: 2
- **Description**: Access and manage Storybook component libraries
- **Installation**: `npm install -g storybook-mcp`
- **Environment**: Requires `STORYBOOK_URL` (e.g., http://localhost:6006/index.json)
- **Integration**: Via metaMCP-RAG orchestrator
- **Last Verified**: 2025-10-02

---

### 7. Upstash Context7
- **Type**: 📦 NPM-Based
- **Package**: `@upstash/context7-mcp`
- **Repository**: https://github.com/upstash/context7-mcp
- **Status**: ✅ Active
- **Tools**: 2
- **Description**: Upstash context and database management
- **Installation**: `npx @upstash/context7-mcp`
- **Integration**: Via metaMCP-RAG orchestrator
- **Last Verified**: 2025-10-02

---

## Server Statistics

| Category | Count | Tools | Avg Tools/Server |
|----------|-------|-------|------------------|
| Remote-Only (Anthropic) | 4 | 88 | 22 |
| NPM-Based (Third-party) | 3 | 36 | 12 |
| **Total** | **7** | **124** | **17.7** |

---

## Installation & Access

### Remote-Only Servers
These servers are accessed through the metaMCP-RAG orchestrator. No local installation required. The orchestrator dynamically instantiates them as needed.

### NPM-Based Servers
Installed via NPM global registry. Can be reinstalled using:

```bash
# Playwright
npm install -g @executeautomation/playwright-mcp-server

# Storybook
npm install -g storybook-mcp

# Context7
npm install -g @upstash/context7-mcp
```

---

## Integration Architecture

All external servers are integrated through the **metaMCP-RAG orchestrator** located at:
```
~/projects/Utility/DEV-TOOLS/mcp-workspace/servers/your-servers/metaMCP-RAG
```

The orchestrator:
- ✓ Manages server lifecycle
- ✓ Indexes all 124 tools in RAG database (ChromaDB)
- ✓ Routes requests to appropriate server
- ✓ Provides unified interface to Claude Code

---

## Maintenance & Updates

### Adding New External Servers
1. Add entry to this registry (EXTERNAL_SERVERS_REGISTRY.md)
2. Update `registry.json` with server metadata
3. Create reference file (if applicable)
4. Register with metaMCP-RAG orchestrator
5. Test tool extraction
6. Update RAG database indexes

### Verifying Server Status
```bash
# Check metaMCP-RAG health
curl http://localhost:12009/health

# Check RAG database
curl http://localhost:8002/health

# List available tools
curl http://localhost:12009/mcp-servers
```

---

## Historical Changes

### 2025-10-02: Full Integration Complete
- ✅ All 7 external servers verified and active
- ✅ 124 total external tools indexed in RAG
- ✅ Fixed Playwright server connection issues
- ✅ Fixed Storybook environment configuration
- ✅ All NPM-based servers successfully debugged

### 2025-10-01: Initial Inventory
- 📋 Documented 7 external servers
- 📋 Identified integration gaps
- 📋 Planning commenced for full registration

---

## References

- **MCP Protocol**: https://modelcontextprotocol.io/
- **Anthropic MCP Servers**: https://github.com/modelcontextprotocol/servers
- **metaMCP-RAG**: See `../your-servers/metaMCP-RAG/`
- **RAG Database**: ChromaDB with 253 total tools indexed
