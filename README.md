# Hospital Backend

This Node.js and MySQL backend project provides functionality for managing patient information and hospital details. Below is a brief overview of the project's functionality and key components.

## Functionality

1. **Get All Patients API Endpoint:**

   - **Endpoint:** `http://localhost:5000/api/patients/`
   - **Method:** GET
   - **Description:** Retrieve information about all patients.

2. **Patient Registration API Endpoint:**

   - **Endpoint:** `http://localhost:5000/api/patients/register`
   - **Method:** POST
   - **Request Data:**
     ```json
     {
       "name": "Michael White",
       "address": "505 Elm St",
       "email": "michael.white@example.com",
       "phoneNumber": "1112223333",
       "password": "AbCdEf1GhIj",
       "patientPhoto": "base64encodedphotodata8",
       "PsychiatristId": 1
     }
     ```
   - **Validation:**
     - Every field is crucial as JOI is implemented for validation.
     - PsychiatristId should be between 1 and 20; otherwise, it will be considered invalid.

3. **Get All Hospitals API Endpoint:**

   - **Endpoint:** `http://localhost:5000/api/hospital`
   - **Method:** GET
   - **Description:** Fetch details of all hospitals from the database.

4. **Get Hospital by ID API Endpoint:**

   - **Endpoint:** `http://localhost:5000/api/hospital/{hospitalId}`
   - **Method:** GET
   - **Params:** Provide an integer as hospitalId.
   - **Note:** Hospital IDs should be in the range of 1 to 4. If any other ID is used, the response will be "Hospital not found."

## Frameworks and Libraries

1. **Express.js:**
   - Description: Minimal and flexible Node.js web application framework.

2. **Joi:**
   - Description: Powerful schema description language and data validator for JavaScript.

3. **Sequelize:**
   - Description: Promise-based Node.js ORM for MySQL, PostgreSQL, SQLite, and MSSQL.

4. **MySQL2:**
   - Description: MySQL library for Node.js providing fast and performant features.

5. **Joi Phone Number:**
   - Description: Joi extension for validating phone numbers.

## Getting Started

Follow these steps to set up and run the project locally:

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/hospital_backend.git
