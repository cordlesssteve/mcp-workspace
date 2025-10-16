# Filesystem MCP Server

**Type:** Remote-Only External Server (Anthropic)
**Repository:** https://github.com/modelcontextprotocol/servers/tree/main/src/filesystem
**Status:** ✅ Active
**Last Updated:** 2025-10-01

---

## Overview

Filesystem MCP Server provides core filesystem operations through the MCP protocol, enabling read, write, list, and search operations on the file system.

**Developer:** Anthropic
**Protocol Compliance:** MCP 2024-11-05

---

## Quick Facts

- **Tools Available:** 14
- **Type:** Local Filesystem Operations
- **Access Method:** Remote-Only (accessed via metaMCP-RAG)
- **Integration:** metaMCP-RAG orchestrator
- **Last Verified:** 2025-10-01

---

## Capabilities

The server provides 14 tools for:
- File reading and writing
- Directory listing and navigation
- File search and query
- Metadata operations
- Path management
- CRUD operations on filesystem

---

## Integration with metaMCP-RAG

This server is integrated into the metaMCP-RAG orchestrator, which:
- ✓ Manages filesystem access
- ✓ Indexes all 14 tools in ChromaDB vector database
- ✓ Routes filesystem operations appropriately
- ✓ Ensures proper error handling for file access

The orchestrator is located at:
```
~/projects/Utility/DEV-TOOLS/mcp-workspace/servers/your-servers/metaMCP-RAG
```

---

## Verification Status

✅ **Production-Grade Verified**
- All 14 tools functional
- Real filesystem operations confirmed
- 1:1 match with direct file operations
- Proper error handling for edge cases

---

## Access

This server is accessed exclusively through the metaMCP-RAG orchestrator. No local installation or symlink is needed.

To use filesystem operations:
```
metaMCP-RAG (Claude Code) → orchestrator → filesystem server → actual filesystem
```

---

## Security Considerations

Filesystem operations respect system permissions and access controls. The server:
- ✓ Enforces user-level permissions
- ✓ Prevents directory traversal attacks
- ✓ Handles symlinks safely
- ✓ Respects .gitignore and exclusion rules

---

## References

- **MCP Protocol:** https://modelcontextprotocol.io/
- **Server Repository:** https://github.com/modelcontextprotocol/servers/tree/main/src/filesystem
- **Anthropic MCP Servers:** https://github.com/modelcontextprotocol/servers
- **Related:** See `EXTERNAL_SERVERS_REGISTRY.md` for other servers
