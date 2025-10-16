# Upstash Context7 MCP Server

**Type:** NPM-Based External Server
**Package:** `@upstash/context7-mcp`
**Status:** ✅ Active
**Last Updated:** 2025-10-02

---

## Overview

Upstash Context7 MCP Server provides integration with Upstash services, enabling context management and database operations through the MCP protocol.

**GitHub Repository:** https://github.com/upstash/context7-mcp
**Developer:** Upstash

---

## Quick Facts

- **Tools Available:** 2
- **Language:** Node.js
- **Installation Method:** NPM/NPX
- **Integration:** metaMCP-RAG orchestrator
- **Last Verified:** 2025-10-02

---

## Installation

### Using NPX (Recommended - No installation needed)
```bash
npx @upstash/context7-mcp
```

### Global Installation
```bash
npm install -g @upstash/context7-mcp
```

### In Project
```bash
npm install @upstash/context7-mcp
```

---

## Configuration

The server may require Upstash credentials for full functionality. Check Upstash documentation for authentication setup.

---

## Capabilities

The server provides 2 tools for:
- Upstash context management
- Database operations
- Service integration

---

## Integration with metaMCP-RAG

This server is integrated into the metaMCP-RAG orchestrator, which:
- ✓ Manages Upstash connection
- ✓ Indexes 2 tools in ChromaDB vector database
- ✓ Routes context and database queries appropriately
- ✓ Handles Upstash service availability gracefully

---

## Debugging History

**Status (2025-10-02):** Successfully integrated
**Result:** 2 tools successfully extracted and indexed

---

## Authentication

For full functionality with Upstash services, ensure you have:
- Upstash account credentials
- API keys configured
- Proper environment variables set (if required)

See Upstash documentation for specific requirements.

---

## References

- **Upstash Documentation:** https://upstash.com/docs
- **MCP Protocol:** https://modelcontextprotocol.io/
- **Server Repository:** https://github.com/upstash/context7-mcp
- **Related:** See `EXTERNAL_SERVERS_REGISTRY.md` for other servers
