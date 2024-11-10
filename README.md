# README

## Management Module Information

This project contains the management module, responsible for handling administrative tasks and configurations.

### Prerequisites
- Node.js (v14 or higher)
- PostgreSQL
- Redis

### Configuration
1. Clone the repository
2. Install dependencies: `npm install`
3. Set up environment variables:
    - Copy `.env.example` to `.env`
    - Update database credentials
    - Configure Redis connection

### Running the Project
```bash
npm run dev     # Development mode
npm run build   # Build project
npm start       # Production mode
```

### Main Features
- User management
- Role-based access control
- System configuration
- Monitoring and logging