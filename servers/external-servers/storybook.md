# Storybook MCP Server

**Type:** NPM-Based External Server
**Package:** `storybook-mcp`
**Status:** ✅ Active
**Last Updated:** 2025-10-02

---

## Overview

Storybook MCP Server provides integration with Storybook component libraries, allowing you to access and manage component documentation and testing through the MCP protocol.

**GitHub Repository:** https://github.com/storybook-mcp/storybook-mcp
**Developer:** Storybook Team

---

## Quick Facts

- **Tools Available:** 2
- **Language:** Node.js
- **Installation Method:** NPM
- **Integration:** metaMCP-RAG orchestrator
- **Last Verified:** 2025-10-02

---

## Installation

### Global Installation (Recommended)
```bash
npm install -g storybook-mcp
```

### In Project
```bash
npm install storybook-mcp
```

---

## Configuration

### Required Environment Variable
```bash
STORYBOOK_URL=http://localhost:6006/index.json
```

This should point to your running Storybook instance's index.json endpoint.

### Starting Storybook Locally
```bash
npm run storybook
# or
storybook dev
```

Default Storybook runs on `http://localhost:6006`

---

## Capabilities

The server provides 2 tools for:
- Accessing component documentation from Storybook
- Querying component metadata
- Integration with component libraries

---

## Integration with metaMCP-RAG

This server is integrated into the metaMCP-RAG orchestrator, which:
- ✓ Manages Storybook connection
- ✓ Indexes 2 tools in ChromaDB vector database
- ✓ Routes component documentation queries appropriately
- ✓ Handles Storybook availability gracefully

---

## Debugging History

**Issue (2025-10-02):** Connection timeout during tool extraction
**Root Cause:** Missing required `STORYBOOK_URL` environment variable
**Solution:** Set `STORYBOOK_URL=http://localhost:6006/index.json` in extraction script
**Result:** 2 tools successfully extracted and indexed

---

## Troubleshooting

### "Connection Refused" Error
- Verify Storybook instance is running on the configured URL
- Check `STORYBOOK_URL` environment variable is set correctly
- Ensure port 6006 (or custom port) is accessible

### "Index.json Not Found"
- Verify Storybook is fully started
- Check URL ends with `/index.json`
- Try navigating to the Storybook URL in browser first

---

## References

- **Storybook Documentation:** https://storybook.js.org/
- **MCP Protocol:** https://modelcontextprotocol.io/
- **Server Repository:** https://github.com/storybook-mcp/storybook-mcp
- **Related:** See `EXTERNAL_SERVERS_REGISTRY.md` for other servers
