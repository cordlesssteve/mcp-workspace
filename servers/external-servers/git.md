# Git MCP Server

**Type:** Remote-Only External Server (Anthropic)
**Repository:** https://github.com/modelcontextprotocol/servers/tree/main/src/git
**Status:** ✅ Active
**Last Updated:** 2025-10-02

---

## Overview

Git MCP Server provides comprehensive Git repository operations through the MCP protocol, enabling full Git workflow management including status, diff, commit, branch, and log operations.

**Developer:** Anthropic
**Language:** Python
**Build Tool:** UV
**Protocol Compliance:** MCP 2024-11-05

---

## Quick Facts

- **Tools Available:** 13
- **Type:** Git Repository Operations
- **Access Method:** Remote-Only (accessed via metaMCP-RAG)
- **Integration:** metaMCP-RAG orchestrator
- **Last Verified:** 2025-10-02

---

## Capabilities

The server provides 13 tools for:
- Repository status and information
- Diff and change inspection
- Commits and history
- Branch management
- Remote operations
- Tag management
- Stash operations
- Reset and checkout
- Blame and file history

---

## Integration with metaMCP-RAG

This server is integrated into the metaMCP-RAG orchestrator, which:
- ✓ Manages Git operations
- ✓ Indexes all 13 tools in ChromaDB vector database
- ✓ Routes Git commands appropriately
- ✓ Handles repository errors gracefully

The orchestrator is located at:
```
~/projects/Utility/DEV-TOOLS/mcp-workspace/servers/your-servers/metaMCP-RAG
```

---

## Technical Details

### Python-Based Implementation
- Uses Python for Git operations
- Managed via UV environment manager
- Ensures consistent dependency resolution

### Error Handling
- Proper handling for non-git directories
- Clear error messages for failed operations
- Graceful fallback for edge cases

---

## Verification Status

✅ **Production-Grade Verified**
- All 13 tools functional
- Real Git operations confirmed
- Proper error handling for all scenarios
- MCP protocol compliance verified (2025-10-02)

---

## Debugging History

**Issue (2025-10-02):** Initial connection timeout
**Root Cause:** Missing MCP protocol initialization handler (`notifications/initialized`)
**Solution:** Added proper MCP protocol notification sequence
**Result:** 13 tools successfully extracted and indexed

---

## Access

This server is accessed exclusively through the metaMCP-RAG orchestrator. No local installation or symlink is needed.

To use Git operations:
```
metaMCP-RAG (Claude Code) → orchestrator → Git server → actual repositories
```

---

## Supported Operations

The server supports all standard Git operations needed for version control:
- ✓ Status and information queries
- ✓ Change inspection and diffing
- ✓ Committing and history viewing
- ✓ Branch and tag management
- ✓ Remote repository operations
- ✓ File-level operations (add, remove, reset)

---

## Security Considerations

Git operations respect:
- ✓ Repository authentication (SSH keys, credentials)
- ✓ User-level permissions
- ✓ Branch protection rules (read-only)
- ✓ Remote access controls

---

## References

- **MCP Protocol:** https://modelcontextprotocol.io/
- **Server Repository:** https://github.com/modelcontextprotocol/servers/tree/main/src/git
- **Git Documentation:** https://git-scm.com/doc
- **Anthropic MCP Servers:** https://github.com/modelcontextprotocol/servers
- **Related:** See `EXTERNAL_SERVERS_REGISTRY.md` for other servers
