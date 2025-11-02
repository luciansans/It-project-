# Quick Start Guide

## 🚀 Get Started in 5 Minutes

### Step 1: Run the Application

**Windows:**
```bash
run.bat
```

**Linux/Mac:**
```bash
chmod +x run.sh
./run.sh
```

Or manually:
```bash
# Create and activate virtual environment
python -m venv venv
venv\Scripts\activate  # Windows
source venv/bin/activate  # Linux/Mac

# Install dependencies
cd backend
pip install -r requirements.txt

# Start server
uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
```

### Step 2: Access the Application

1. **Backend API**: http://localhost:8000
2. **API Documentation**: http://localhost:8000/docs
3. **Frontend**: Open `frontend/index.html` in your browser

### Step 3: Create Your First User

1. Open the frontend in your browser
2. Click "Register" in the navigation
3. Fill in the registration form:
   - Username: `testuser`
   - Email: `test@example.com`
   - Password: `password123`
   - Role: `Patient`
4. Click "Register"

### Step 4: Login

1. Click "Login" in the navigation
2. Enter your credentials:
   - Username: `testuser`
   - Password: `password123`
3. Click "Login"

### Step 5: Add Sample Data

#### Create a Doctor (via API)

Open http://localhost:8000/docs and use the interactive API:

1. Click on `POST /api/doctors`
2. Click "Try it out"
3. Enter:
```json
{
  "full_name": "Dr. John Smith",
  "specialization": "General Practitioner",
  "contact_number": "0123456789",
  "email": "dr.smith@clinic.com",
  "room_number": "101"
}
```
4. Click "Execute"

#### Create a Patient (via API)

1. Click on `POST /api/patients`
2. Click "Try it out"
3. Enter:
```json
{
  "full_name": "Jane Doe",
  "gender": "Female",
  "date_of_birth": "1990-01-15",
  "contact_number": "0987654321",
  "email": "jane.doe@email.com",
  "consent_flag": true
}
```
4. Click "Execute"

### Step 6: Book an Appointment

1. Go to the "Appointments" section in the frontend
2. Click "Book New Appointment"
3. Select a doctor
4. Choose date and time
5. Select appointment type
6. Add reason (optional)
7. Click "Book Appointment"

### Step 7: Check Queue Status

1. Go to the "Queue" section
2. Select a doctor from the dropdown
3. View the current queue status

## 🎯 Common Tasks

### View All Appointments
- Navigate to "Appointments" section
- All your appointments will be listed

### Cancel an Appointment
- Go to "Appointments"
- Find the appointment
- Click "Cancel" button

### Check Queue Position
- Go to "Queue" section
- Select the doctor
- View your position and estimated wait time

## 🔧 Troubleshooting

### Port Already in Use
If port 8000 is already in use:
```bash
uvicorn app.main:app --reload --port 8001
```
Then update the API URL in `frontend/js/main.js`:
```javascript
const API_BASE_URL = 'http://localhost:8001/api';
```

### Database Issues
Delete the database file and restart:
```bash
del backend\clinic.db  # Windows
rm backend/clinic.db   # Linux/Mac
```

### Module Not Found
Reinstall dependencies:
```bash
cd backend
pip install -r requirements.txt --force-reinstall
```

### CORS Errors
Make sure the backend is running and the CORS origins in `.env` include your frontend URL.

## 📝 Next Steps

1. Read the full [README.md](README.md) for detailed documentation
2. Explore the API documentation at http://localhost:8000/docs
3. Check out the [Phase 5 Implementation Document](402306266%20-%20IT%20Project%20Phase%205.md)
4. Review the test cases and testing strategy

## 🆘 Need Help?

- Check the [README.md](README.md) for detailed instructions
- Review the API documentation at http://localhost:8000/docs
- Contact the team leader: Lucian Maurice Sans-Souci (402306266)

## 🎓 For Demonstration

### Demo Scenario 1: Patient Books Appointment

1. Register as a patient
2. Login
3. View available doctors
4. Book an appointment
5. View appointment in the list

### Demo Scenario 2: Queue Management

1. Create multiple appointments for the same doctor
2. Check in patients (via API)
3. View queue status
4. Call next patient (via API)
5. See queue updates in real-time

### Demo Scenario 3: Admin Operations

1. Register as admin
2. Add new doctors
3. Add new patients
4. View all appointments
5. Manage system users

---

**Happy Testing! 🎉**