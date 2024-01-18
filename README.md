# Project Title

I've successfully completed the assignment using Node.js and MySQL. Allow me to provide a brief explanation of the functionality.
When accessing the endpoint http://localhost:5000/api/patients/, you can retrieve detailed information about all patients.
For patient registration, send a POST request to http://localhost:5000/api/patients/register with the following JSON data:

{
"name": "Michael White",
"address": "505 Elm St",
"email": "michael.white@example.com",
"phoneNumber": "1112223333",
"password": "AbCdEf1GhIj",
"patientPhoto": "base64encodedphotodata8",
"PsychiatristId": 1
}
It's important to note that the PsychiatristId should be in the range of 1 to 20, as there are only 20 available psychiatrists. If the password provided falls outside the range of 1 to 20, a validation error will be triggered.

Additionally, I've implemented database seeding, creating four hospitals with IDs ranging from 1 to 4. You can retrieve details for a specific hospital by making a GET request to http://localhost:5000/api/hospital/{hospitalId}. To fetch details for all hospitals, use http://localhost:5000/api/hospital.

1. Get All Patients API Endpoint:

Endpoint: http://localhost:5000/api/patients/
HTTP Method: GET
This endpoint allows us to retrieve information about all patients. 2. Registration API Endpoint:
Endpoint: http://localhost:5000/api/patients/register
HTTP Method: POST
Request Data:
json

{
"name": "Michael White",
"address": "505 Elm St",
"email": "michael.white@example.com",
"phoneNumber": "1112223333",
"password": "AbCdEf1GhIj",
"patientPhoto": "base64encodedphotodata8",
"PsychiatristId": 1
}
Validation:
Every field is crucial as I have implemented JOI for validation.
PsychiatristId should be between 1 and 20; otherwise, it will be considered invalid. Currently, only 20 psychiatrists are available.

## API Endpoints

1. **Get All Patients**

   - **Endpoint:** `http://localhost:5000/api/patients/`
   - **Method:** GET
   - **Description:** Retrieve information about all patients.

2. **Patient Registration**

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

3. **Get All Hospitals**

   - **Endpoint:** `http://localhost:5000/api/hospital`
   - **Method:** GET
   - **Description:** Fetch details of all hospitals from the database.

4. **Get Hospital by ID**

   - **Endpoint:** `http://localhost:5000/api/hospital/{hospitalId}`
   - **Method:** GET
   - **Params:** Provide an integer as hospitalId.
   - **Note:** Hospital IDs should be in the range of 1 to 4. If any other ID is used, the response will be "Hospital not found."

## Frameworks and Libraries

1. **Express.js**

   - Description: Minimal and flexible Node.js web application framework.

2. **Joi**

   - Description: Powerful schema description language and data validator for JavaScript.

3. **Sequelize**

   - Description: Promise-based Node.js ORM for MySQL, PostgreSQL, SQLite, and MSSQL.

4. **MySQL2**

   - Description: MySQL library for Node.js providing fast and performant features.

5. **Joi Phone Number**
   - Description: Joi extension for validating phone numbers.
#   h o s p i t a l _ b a c k e n d  
 