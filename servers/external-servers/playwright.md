# Playwright MCP Server

**Type:** NPM-Based External Server
**Package:** `@executeautomation/playwright-mcp-server`
**Status:** ✅ Active
**Last Updated:** 2025-10-02

---

## Overview

Playwright MCP Server provides comprehensive browser automation, testing, and web scraping capabilities through the MCP protocol.

**GitHub Repository:** https://github.com/executeautomation/playwright-mcp-server
**Developer:** Execute Automation

---

## Quick Facts

- **Tools Available:** 32
- **Language:** Node.js
- **Installation Method:** NPM/NPX
- **Integration:** metaMCP-RAG orchestrator
- **Last Verified:** 2025-10-02

---

## Installation

### Using NPX (Recommended - No installation needed)
```bash
npx -y @executeautomation/playwright-mcp-server
```

### Global Installation
```bash
npm install -g @executeautomation/playwright-mcp-server
```

### In Project
```bash
npm install @executeautomation/playwright-mcp-server
```

---

## Capabilities

The server provides 32 tools for:
- Browser automation and control
- Navigation and page interaction
- Screenshots and visual testing
- Web scraping
- Form filling and submission
- DOM querying and manipulation
- Performance testing
- Mobile device emulation

---

## Integration with metaMCP-RAG

This server is integrated into the metaMCP-RAG orchestrator, which:
- ✓ Manages Playwright lifecycle
- ✓ Indexes all 32 tools in ChromaDB vector database
- ✓ Routes browser automation requests intelligently
- ✓ Provides semantic tool selection via RAG

---

## Debugging History

**Issue (2025-10-02):** Initial connection timeout
**Root Cause:** Missing MCP protocol initialization handler
**Solution:** Added notification routing for browser events
**Result:** 32 tools successfully extracted and indexed

---

## References

- **MCP Protocol:** https://modelcontextprotocol.io/
- **Playwright Documentation:** https://playwright.dev/
- **Server Repository:** https://github.com/executeautomation/playwright-mcp-server
- **Related:** See `EXTERNAL_SERVERS_REGISTRY.md` for other servers
