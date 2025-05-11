# Pasi pentru rulare

## 1. Deschide fisierul ".sln" in Visual Studio.



## 2. Creeaza baza de date in SQL Server

1. Deschide SQL Server Management Studio (SSMS)
2. Conectează-te la instanta ta
3. Ruleaza scripturile din folderul "bazaDeDate"

- "creare_baza_date_UTCNLibrary.sql" → creează baza de date și tabelele
- "populare_date_test_UTCNLibrary.sql" → adaugă date de test



## 3. Modifica fisierul "web.config"

Modifica stringul de conexiune conform instantei SQL de pe calculatorul tau:

<connectionStrings>
  <add name="con" 
       connectionString="Data Source=NUMELE_TAU_PC;Initial Catalog=UTCNLibrary;Integrated Security=True;" 
       providerName="System.Data.SqlClient" />
</connectionStrings>

 Află numele calculatorului tău din SSMS → „Server name”.



## 4. Ruleaza aplicatia



## 5. Date admin:

Username: admin
Password: admin123

# Functionalitati inovative adaugate:

