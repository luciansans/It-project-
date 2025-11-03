# Doctor Appointment & Office Management System

A comprehensive web-based platform for managing clinic appointments, patient queues, and doctor schedules. Built with FastAPI (Python) backend and vanilla JavaScript frontend.

## 🎯 Project Overview

This system addresses the challenges faced by small and rural clinics in South Africa by providing:
- Multi-channel appointment booking
- Real-time queue management
- Automated notifications (SMS/Email)
- Analytics dashboard
- Offline mode support
- POPIA-compliant data handling

## 👥 Team Members

| Name | Student Number | Role |
|------|----------------|------|
| LUCIAN MAURICE Sans-Souci | 402306266 | Team Leader |
| RICHARD ODISANG NTWAYAGAE | 402100270 | Member |
| MVUSULUDZO NETSHIRANDO | 402414431 | Member |
| Mitchell SUNKRAN | 402000565 | Member |
| MOINUDDEEN WAHAB | 402308091 | Member |
| MAHLATSE HEZEKIEL MADISHA | 402307279 | Member |

## 🚀 Features

### Core Functionality
- **Appointment Management**: Book, reschedule, and cancel appointments
- **Queue System**: Real-time patient queue with priority handling
- **User Authentication**: Role-based access control (Admin, Doctor, Reception, Patient)
- **Doctor Profiles**: View doctor specializations and availability
- **Notifications**: Automated reminders via SMS and email
- **Analytics**: Track no-shows, utilization rates, and peak hours

### Technical Features
- RESTful API architecture
- JWT-based authentication
- SQLite database (development) / MySQL (production)
- Responsive web interface
- Real-time queue updates
- Offline mode support

## 📋 Prerequisites

- Python 3.9 or higher
- pip (Python package manager)
- Git
- Modern web browser (Chrome, Firefox, Safari, Edge)

## 🛠️ Installation

### 1. Clone the Repository

```bash
git clone <repository-url>
cd doctor-appointment-system
```

### 2. Set Up Python Virtual Environment

```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# On Windows:
venv\Scripts\activate
# On Linux/Mac:
source venv/bin/activate
```

### 3. Install Dependencies

```bash
cd backend
pip install -r requirements.txt
```

### 4. Configure Environment Variables

```bash
# Copy example environment file
copy .env.example .env

# Edit .env file with your configuration
# For development, default values should work
```

### 5. Initialize Database

```bash
# The database will be automatically created on first run
# Tables are created using SQLAlchemy models
```

## 🏃‍♂️ Running the Application

### Start Backend Server

```bash
cd backend
uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
```

The API will be available at: `http://localhost:8000`
API documentation: `http://localhost:8000/docs`

### Start Frontend

Simply open `frontend/index.html` in your web browser, or use a local server:

```bash
# Using Python's built-in server
cd frontend
python -m http.server 8080
```

Then navigate to: `http://localhost:8080`

## 📚 API Documentation

### Authentication Endpoints

- `POST /api/auth/login` - User login
- `POST /api/auth/register` - User registration
- `GET /api/auth/me` - Get current user info

### Patient Endpoints

- `GET /api/patients` - List all patients
- `POST /api/patients` - Create new patient
- `GET /api/patients/{id}` - Get patient details
- `PUT /api/patients/{id}` - Update patient
- `DELETE /api/patients/{id}` - Delete patient

### Doctor Endpoints

- `GET /api/doctors` - List all doctors
- `POST /api/doctors` - Create new doctor
- `GET /api/doctors/{id}` - Get doctor details
- `PUT /api/doctors/{id}` - Update doctor
- `DELETE /api/doctors/{id}` - Delete doctor

### Appointment Endpoints

- `GET /api/appointments` - List appointments
- `POST /api/appointments` - Create appointment
- `GET /api/appointments/{id}` - Get appointment details
- `PUT /api/appointments/{id}` - Update appointment
- `DELETE /api/appointments/{id}` - Cancel appointment
- `GET /api/appointments/doctor/{doctor_id}/schedule` - Get doctor schedule

### Queue Endpoints

- `POST /api/queue/check-in` - Check in patient
- `GET /api/queue/status/{doctor_id}` - Get queue status
- `POST /api/queue/call-next/{doctor_id}` - Call next patient
- `GET /api/queue/patient/{appointment_id}` - Get patient queue position

## 🧪 Testing

### Run Unit Tests

```bash
cd backend
pytest tests/ -v
```

### Run with Coverage

```bash
pytest tests/ --cov=app --cov-report=html
```

## 📁 Project Structure

```
doctor-appointment-system/
├── backend/
│   ├── app/
│   │   ├── api/           # API endpoints
│   │   ├── core/          # Core configuration
│   │   ├── models/        # Database models
│   │   ├── schemas/       # Pydantic schemas
│   │   └── services/      # Business logic
│   ├── tests/             # Test files
│   ├── requirements.txt   # Python dependencies
│   └── .env.example       # Environment template
├── frontend/
│   ├── css/               # Stylesheets
│   ├── js/                # JavaScript files
│   ├── assets/            # Images and media
│   └── index.html         # Main HTML file
├── docs/                  # Documentation
├── database/              # Database migrations
└── README.md              # This file
```

## 🔐 Default Credentials

For testing purposes, you can create users via the registration endpoint or use these default credentials (if seeded):

- **Admin**: username: `admin`, password: `admin123`
- **Doctor**: username: `doctor1`, password: `doctor123`
- **Reception**: username: `reception1`, password: `reception123`
- **Patient**: username: `patient1`, password: `patient123`

**⚠️ Change these credentials in production!**

## 🛡️ Security

- Passwords are hashed using bcrypt
- JWT tokens for authentication
- HTTPS recommended for production
- POPIA-compliant data handling
- Role-based access control
- Audit logging for sensitive operations

## 📊 Database Schema

### Main Tables

- **users** - User authentication and roles
- **patients** - Patient information
- **doctors** - Doctor profiles
- **appointments** - Appointment records
- **queue_entries** - Queue management
- **notifications** - Notification tracking

## 🚀 Deployment

### Production Deployment

1. Set up production database (MySQL)
2. Configure environment variables
3. Set `DEBUG=False` in `.env`
4. Use production WSGI server (Gunicorn/Uvicorn)
5. Set up reverse proxy (Nginx)
6. Configure SSL certificates
7. Set up automated backups

### Docker Deployment (Optional)

```bash
# Build and run with Docker Compose
docker-compose up -d
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is part of IT Project 700 (2025) academic coursework.

## 📞 Support

For issues and questions:
- Create an issue in the repository
- Contact the team leader: Lucian Maurice Sans-Souci (402306266)

## 🙏 Acknowledgments

- FastAPI framework
- SQLAlchemy ORM
- Pydantic for data validation
- All team members for their contributions

## 📅 Project Timeline

- **Phase 1**: Project Proposal (Completed)
- **Phase 2**: Planning & Analysis (Completed)
- **Phase 3**: System Analysis (Completed)
- **Phase 4**: System Design (Completed)
- **Phase 5**: Implementation & Testing (Current)
- **Phase 6**: Deployment & Documentation (Upcoming)

## 🎓 Academic Context

This project is submitted as part of IT Project 700 coursework for 2025, demonstrating practical application of:
- Software Development Life Cycle (SDLC)
- Agile methodology
- Full-stack web development
- Database design and management
- API development
- User interface design
- Testing and quality assurance

---

**Version**: 1.0.0  
**Last Updated**: November 2025  
**Status**: Active Development