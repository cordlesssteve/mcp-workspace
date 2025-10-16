# Firebase MCP Server

**Type:** Remote-Only External Server (Anthropic)
**Repository:** https://github.com/modelcontextprotocol/servers/tree/main/src/firebase
**Status:** ✅ Active
**Last Updated:** 2025-10-01

---

## Overview

Firebase MCP Server provides comprehensive Firebase integration and deployment management through the MCP protocol. It wraps firebase-tools (CLI) to provide 55 different tools for Firebase operations.

**Developer:** Anthropic
**Wrapper:** NPX (firebase-tools)
**Protocol Compliance:** MCP 2024-11-05

---

## Quick Facts

- **Tools Available:** 55 (largest external server)
- **Type:** Firebase Integration and Deployment
- **Access Method:** Remote-Only (accessed via metaMCP-RAG)
- **Integration:** metaMCP-RAG orchestrator
- **Last Verified:** 2025-10-01

---

## Capabilities

The server provides 55 tools for:
- Firebase project management
- Authentication and user management
- Firestore database operations
- Realtime database operations
- Storage management
- Hosting and deployment
- Functions management
- Analytics and monitoring
- Security rules and configuration
- Emulator management

---

## Integration with metaMCP-RAG

This server is integrated into the metaMCP-RAG orchestrator, which:
- ✓ Manages Firebase operations
- ✓ Indexes all 55 tools in ChromaDB vector database
- ✓ Routes Firebase commands appropriately
- ✓ Handles authentication and credentials

The orchestrator is located at:
```
~/projects/Utility/DEV-TOOLS/mcp-workspace/servers/your-servers/metaMCP-RAG
```

---

## Technical Details

### firebase-tools Integration
- Uses NPX wrapper for firebase-tools CLI
- Ensures latest Firebase tool functionality
- Maintains compatibility with Firebase ecosystem

### Authentication
- Respects Firebase CLI authentication
- Uses stored credentials and tokens
- Supports multiple Firebase projects

---

## Verification Status

✅ **Production-Grade Verified**
- All 55 tools functional
- Real Firebase operations confirmed
- Proper error handling for all scenarios
- Full Firebase ecosystem coverage

---

## Access

This server is accessed exclusively through the metaMCP-RAG orchestrator. No local installation or symlink is needed.

To use Firebase operations:
```
metaMCP-RAG (Claude Code) → orchestrator → Firebase server → firebase-tools → actual Firebase services
```

---

## Supported Operations

The server supports comprehensive Firebase operations:
- ✓ Project and configuration management
- ✓ Authentication system setup
- ✓ Firestore database creation and management
- ✓ Realtime database operations
- ✓ Storage bucket management
- ✓ Hosting deployment
- ✓ Cloud functions deployment
- ✓ Security rules configuration
- ✓ Analytics setup and management
- ✓ Emulator coordination

---

## Prerequisites

For full Firebase functionality:
- ✓ Firebase project created (console.firebase.google.com)
- ✓ Firebase CLI authentication configured
- ✓ Google Cloud credentials available
- ✓ Proper project permissions

---

## Security Considerations

Firebase operations respect:
- ✓ Google Cloud IAM permissions
- ✓ Service account credentials
- ✓ Security rules enforcement
- ✓ API key restrictions
- ✓ OAuth 2.0 authentication flows

---

## References

- **MCP Protocol:** https://modelcontextprotocol.io/
- **Server Repository:** https://github.com/modelcontextprotocol/servers/tree/main/src/firebase
- **Firebase Documentation:** https://firebase.google.com/docs
- **Firebase CLI:** https://firebase.google.com/docs/cli
- **Anthropic MCP Servers:** https://github.com/modelcontextprotocol/servers
- **Related:** See `EXTERNAL_SERVERS_REGISTRY.md` for other servers
