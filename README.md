# Office Database

A personal project to transition from simple spreadsheet-based record keeping to an automated, modern **SQL-based system** using open-source tools.

## Goal
Replace Microsoft Excel workflows with a free, scalable, and automated database solution on Ubuntu Linux.

## Tech Stack
- **Database**: PostgreSQL
- **OS**: Ubuntu Linux
- **Primary Tool**: DBeaver
- **Secondary Tool**: LibreOffice Base (for comparison)

## Tool Comparison

| Tool                | Purpose                        | Strengths                          | Limitations                     | Usage in this Project      |
|---------------------|--------------------------------|------------------------------------|---------------------------------|----------------------------|
| **DBeaver**         | Database management            | Excellent PostgreSQL support, powerful SQL editor, schema visualization | Steeper learning curve         | **Primary tool**           |
| **LibreOffice Base**| Desktop database / forms       | Familiar interface, easy forms     | Weak PostgreSQL support, limited SQL features | **Comparison & testing**   |

## Project Structure

- **README.md**          - Main project documentation
- **ROADMAP.md**         - Project development plan  
- **.gitignore**         - Files and folders to ignore in git
- **LICENSE**            - Open source license
- **schema/**            - SQL schema and migration files
- **scripts/**           - Python automation scripts  
- **docs/**              - Additional documentation and guides
- **data/**              - Sample data and spreadsheet imports (not committed)

## Setup Instructions
1. Install PostgreSQL on Ubuntu
2. Install DBeaver (and optionally LibreOffice Base)
3. Create the `office_db` database
4. Run the schema scripts

## Current Status
**Phase 1: Planning & Setup** — Completed ✅

