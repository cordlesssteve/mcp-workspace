# Netlify MCP Server

**Type:** Remote-Only External Server (Anthropic)
**Repository:** https://github.com/modelcontextprotocol/servers/tree/main/src/netlify
**Status:** ✅ Active
**Last Updated:** 2025-10-01

---

## Overview

Netlify MCP Server provides Netlify deployment and site management capabilities through the MCP protocol, enabling comprehensive control over Netlify sites, deployments, and configurations.

**Developer:** Anthropic
**Protocol Compliance:** MCP 2024-11-05

---

## Quick Facts

- **Tools Available:** 6
- **Type:** Netlify Deployment and Site Management
- **Access Method:** Remote-Only (accessed via metaMCP-RAG)
- **Integration:** metaMCP-RAG orchestrator
- **Last Verified:** 2025-10-01

---

## Capabilities

The server provides 6 tools for:
- Site and project management
- Deployment control and history
- Environment variable management
- Build configuration
- Domain and DNS management
- Site preview and publishing

---

## Integration with metaMCP-RAG

This server is integrated into the metaMCP-RAG orchestrator, which:
- ✓ Manages Netlify operations
- ✓ Indexes all 6 tools in ChromaDB vector database
- ✓ Routes deployment commands appropriately
- ✓ Handles site and deployment queries

The orchestrator is located at:
```
~/projects/Utility/DEV-TOOLS/mcp-workspace/servers/your-servers/metaMCP-RAG
```

---

## Technical Details

### Netlify API Integration
- Uses Netlify API for operations
- Supports OAuth authentication
- Manages deployment workflows

### Authentication
- Respects Netlify authentication tokens
- Supports multiple Netlify accounts
- Secures sensitive deployment information

---

## Verification Status

✅ **Production-Grade Verified**
- All 6 tools functional
- Real Netlify operations confirmed
- Proper error handling for deployment scenarios
- Full site management coverage

---

## Access

This server is accessed exclusively through the metaMCP-RAG orchestrator. No local installation or symlink is needed.

To use Netlify operations:
```
metaMCP-RAG (Claude Code) → orchestrator → Netlify server → Netlify API → actual Netlify services
```

---

## Supported Operations

The server supports:
- ✓ Site list and information retrieval
- ✓ Deployment creation and management
- ✓ Environment variable setup and modification
- ✓ Build trigger and monitoring
- ✓ Custom domain configuration
- ✓ Deploy preview and production management

---

## Prerequisites

For full Netlify functionality:
- ✓ Netlify account created (netlify.com)
- ✓ API tokens configured
- ✓ Sites connected to Netlify
- ✓ Git repository integration (optional)

---

## Security Considerations

Netlify operations respect:
- ✓ Netlify access tokens and OAuth
- ✓ Team and account permissions
- ✓ Site and deployment access controls
- ✓ Environment variable encryption
- ✓ Deployment URL restrictions

---

## References

- **MCP Protocol:** https://modelcontextprotocol.io/
- **Server Repository:** https://github.com/modelcontextprotocol/servers/tree/main/src/netlify
- **Netlify Documentation:** https://docs.netlify.com/
- **Netlify API:** https://docs.netlify.com/api/overview/
- **Anthropic MCP Servers:** https://github.com/modelcontextprotocol/servers
- **Related:** See `EXTERNAL_SERVERS_REGISTRY.md` for other servers
