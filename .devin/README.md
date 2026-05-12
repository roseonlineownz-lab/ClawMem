# Devin Setup — ClawMem
 
## What is this?
ClawMem is an on-device context engine and memory system for AI agents. It provides hybrid RAG search (BM25 + vector + graph), self-evolving memory (A-MEM), and multi-graph traversal (MAGMA).
 
## Tech stack
- TypeScript, Bun runtime
- SQLite (via better-sqlite3) with FTS5 and vec0 extensions
- Local LLM via llama-server for embeddings and memory evolution
 
## Key files
- `src/store.ts` — Main SQLite store (4600 lines, schema + CRUD)
- `src/amem.ts` — A-MEM self-evolving memory implementation
- `src/search-utils.ts` — Reciprocal Rank Fusion search
- `src/mcp.ts` — MCP server for Claude Code / OpenClaw
- `src/hooks/` — Claude Code lifecycle hooks
 
## Testing
Run `bun test` — there is an existing test suite.
 
## Build
Run `bun run build` to compile TypeScript.
