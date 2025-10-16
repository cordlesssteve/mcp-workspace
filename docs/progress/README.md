# Progress Archives

This directory contains timestamped archives of planning documents following the mandatory archival protocol.

## Structure
- Organized by month: `YYYY-MM/`
- Archived files include timestamp: `CURRENT_STATUS.YYYY-MM-DD_HHMM.md`
- Worktree-aware naming when applicable: `CURRENT_STATUS.worktree-name.YYYY-MM-DD_HHMM.md`

## Archive Status Headers
- **ACTIVE**: Currently executing (should only be in root, not archives)
- **ARCHIVED**: Completed/historical
- **SUPERSEDED**: Replaced by newer version
- **BLOCKED**: Waiting for external input

## Archival Protocol
Before updating any CURRENT_STATUS or ACTIVE_PLAN file:
1. Archive the old version with timestamp
2. Update status header to SUPERSEDED or ARCHIVED
3. Update live file with archive reference
4. Log change in weekly progress notes
