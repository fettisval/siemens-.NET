# Steps to Run the Project

## 1. Open the ".sln" file in Visual Studio

---

## 2. Create the database in SQL Server

1. Open SQL Server Management Studio (SSMS)  
2. Connect to your instance  
3. Run the scripts from the "bazaDeDate" folder:

- `creare_baza_date_UTCNLibrary.sql` → creates the database and tables  
- `populare_date_test_UTCNLibrary.sql` → inserts test data  

---

## 3. Modify the "web.config" file

Update the connection string according to the SQL Server instance on your computer:

```xml
<connectionStrings>
  <add name="con" 
       connectionString="Data Source=YOUR_PC_NAME;Initial Catalog=UTCNLibrary;Integrated Security=True;" 
       providerName="System.Data.SqlClient" />
</connectionStrings>
```

You can find your computer's name in SSMS → “Server name”.

---

## 4. Run the application

---

## 5. Admin credentials:

- **Username**: `admin`  
- **Password**: `admin123`

---

# Added functionalities:

- Ability to change a user's status  
- Notification system for overdue books  
- Support for multiple genres per book  
- Book cover image available for each book  
