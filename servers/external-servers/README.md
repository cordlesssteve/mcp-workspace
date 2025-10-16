# External MCP Servers Registry

Welcome to the External MCP Servers directory! This directory serves as a centralized record-keeping system for all external Model Context Protocol (MCP) servers that are integrated into your MCP workspace.

---

## 📋 Quick Navigation

### Registry Files
- **[EXTERNAL_SERVERS_REGISTRY.md](EXTERNAL_SERVERS_REGISTRY.md)** - Human-readable registry with detailed information about all 7 external servers
- **[registry.json](registry.json)** - Machine-readable structured data for all servers

### Server Documentation

#### Remote-Only Servers (Anthropic)
- [filesystem.md](filesystem.md) - 14 tools for filesystem operations
- [git.md](git.md) - 13 tools for Git repository operations
- [firebase.md](firebase.md) - 55 tools for Firebase management
- [netlify.md](netlify.md) - 6 tools for Netlify deployment

#### NPM-Based External Servers
- [playwright.md](playwright.md) - 32 tools for browser automation
- [storybook.md](storybook.md) - 2 tools for component libraries
- [context7.md](context7.md) - 2 tools for Upstash context management

---

## 🎯 Directory Purpose

This directory serves as:

1. **Record-Keeping System** - Comprehensive documentation of all external servers
2. **Reference Library** - Quick access to server information and GitHub repositories
3. **Maintenance Hub** - Central location for managing external server integrations
4. **Integration Point** - Where external servers are registered and organized

---

## 📊 Statistics

| Metric | Value |
|--------|-------|
| **Total External Servers** | 7 |
| **Total Tools Available** | 124 |
| **Remote-Only Servers** | 4 (Anthropic) |
| **NPM-Based Servers** | 3 (Third-party) |
| **Average Tools/Server** | 17.7 |

---

## 🔌 Integration Architecture

All external servers are integrated through the **metaMCP-RAG orchestrator**:

```
External Servers
      ↓
metaMCP-RAG Orchestrator
      ↓
ChromaDB Vector Database (253 tools indexed)
      ↓
Claude Code (MCP Protocol)
      ↓
Your AI Workflow
```

**Orchestrator Location:**
```
~/projects/Utility/DEV-TOOLS/mcp-workspace/servers/your-servers/metaMCP-RAG
```

---

## 🚀 Quick Start

### Accessing External Servers
All external servers are automatically available through Claude Code. No additional setup needed.

### Checking Server Status
```bash
# Health check for orchestrator
curl http://localhost:12009/health

# Check RAG database
curl http://localhost:8002/health

# List available tools
curl http://localhost:12009/mcp-servers
```

### Adding a New External Server

1. Research the MCP server on GitHub
2. Add entry to `EXTERNAL_SERVERS_REGISTRY.md`
3. Update `registry.json` with server metadata
4. Create individual reference file (if applicable)
5. Register with metaMCP-RAG orchestrator
6. Test tool extraction
7. Update RAG database indexes

---

## 📝 File Formats

### EXTERNAL_SERVERS_REGISTRY.md
- **Format:** Markdown with tables and sections
- **Purpose:** Human-readable server information
- **Use Case:** Quick reference, documentation

### registry.json
- **Format:** JSON with structured fields
- **Purpose:** Machine-readable server metadata
- **Use Case:** Automation, tooling, API integration

### Individual Server Files (*.md)
- **Format:** Markdown with sections
- **Purpose:** Detailed server documentation
- **Use Case:** Installation, configuration, troubleshooting

---

## 🔄 Maintenance

### Regular Tasks
- ✓ Verify server connectivity (monthly)
- ✓ Update tool counts (after major updates)
- ✓ Check for new versions (quarterly)
- ✓ Test tool extraction (after updates)

### Debugging
Each server documentation file includes:
- ✓ Known issues and solutions
- ✓ Debugging history from past sessions
- ✓ Troubleshooting guides
- ✓ Configuration requirements

---

## 🔐 Security Notes

All external servers:
- ✓ Are accessed through the metaMCP-RAG orchestrator
- ✓ Respect system-level permissions
- ✓ Follow MCP protocol security standards
- ✓ Are version-controlled and auditable
- ✓ Support environment-based configuration

---

## 📚 References

### Key Locations
- **Workspace Root:** `~/projects/Utility/DEV-TOOLS/mcp-workspace/`
- **Orchestrator:** `~/projects/Utility/DEV-TOOLS/mcp-workspace/servers/your-servers/metaMCP-RAG/`
- **Custom Servers:** `~/projects/Utility/DEV-TOOLS/mcp-workspace/servers/your-servers/`
- **RAG Database:** ChromaDB with vector embeddings

### External Resources
- **MCP Protocol:** https://modelcontextprotocol.io/
- **Anthropic MCP Servers:** https://github.com/modelcontextprotocol/servers
- **MCP Implementations:** https://modelcontextprotocol.io/clients-and-servers

---

## 🤝 Contributing

To update this registry:

1. **Update Registry File**
   - Edit `EXTERNAL_SERVERS_REGISTRY.md` with new information
   - Keep timestamps current

2. **Update Structured Data**
   - Edit `registry.json` with new server metadata
   - Ensure JSON validity

3. **Add Server Documentation**
   - Create new `[server-name].md` file
   - Follow existing documentation pattern
   - Include installation, configuration, and troubleshooting

4. **Commit Changes**
   - Stage all registry files
   - Commit with descriptive message
   - Push to GitHub

---

## 📞 Support

For issues with external servers:

1. Check the individual server's `.md` file for troubleshooting
2. Review the main registry for status information
3. Check metaMCP-RAG logs for integration issues
4. Consult the server's GitHub repository for latest updates

---

## 🎓 Learn More

- **MCP Protocol Docs:** https://modelcontextprotocol.io/docs
- **Custom Servers Guide:** See `../your-servers/README.md`
- **MetaMCP-RAG Docs:** See `../your-servers/metaMCP-RAG/`
- **Project Documentation:** See `../../../../docs/`

---

**Last Updated:** 2025-10-16
**Maintained By:** Claude Code
**Status:** Active and Growing
