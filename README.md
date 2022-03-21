# ASP.NET-CRUD-Session-Handling
![Main Page Preview](/Images/0.PNG "Main Page")

## Introduction

This project offer a basic **Authentication System** mainly focusses on :
 * **3 Tier Architecture**

 * **Session Handling** 
 
## Features

This Application allows to:

#### 1. SignUp

Register a user having a specific Accesslevel to control its functionality respectively.
>1. Admin
>2. Employee
>3. Customer
>4. Supplier

#### 2. LogIn

> Authenticate a user by checking provided email and password

>Create a session with respective accesslevel and information.

>Redirect to the respective Landing Page

#### 3. Access Level

|Access Level|User    |
|------------|:-------|
| 0          |Admin   |
| 1          |Employee|
| 2          |Customer|
| 3          |Supplier|

#### 3. ADO.NET

ADO.Net approach is used to communicate with SQL Server for performing necessary actions on database in order to modify or read data while performing crud operations.

#### 4. Session Handing

Session will enable us to get information of user in order to restrict the user access with respect to its accesslevel.

#### 5. 3 Tier Architecture
This project follows the 3 tier Architecture to develop this application that provides the efficent solution of managing high trafic towards the server. It is consist of follwing layers:
>1. **Data Access Layer**
>2. **Bussiness Logic Layer**
>3. **Presentation Layer**

#### 6. App Props
In order to move data between different layers we used app props.

## Tools
 * **3 Tier Architecture**
 
 * **Session Handling** 
 
 * **ADO.NET**
 
 * **SQL Server**

 * **App Props**
 
## Requirements

You just need the following softwares to be installed in your computer to run this project
 
 * **Visual Studio 2019**

 * **SQL Server Management Studio (SSMS 18)** 
 
 * **SQL Server 2019** *
 
## Exection

To run this project you simply need to:
1. Start you **SQL Server SERVICES**
2. Execute [Authentication.sql](Authentication.sql) script in your **SSMS** 
3. Double click on **ByteWise Login System.sln** and run with **Visual Studio 2019**

## PREVIEW
![Landing Page Preview](/Images/1.PNG "Landing Page")
![Sign Up Selection Preview](/Images/2.PNG "Sign Up Selection")
![Sign Up Preview](/Images/3.PNG "Sign Up")
![Welcome Page Preview](/Images/4.PNG "Welcome Page")
