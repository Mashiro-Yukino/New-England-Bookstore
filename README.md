# <p align="center">New England Book Store

<p align="center">Team : Yinzheng Xiong, Teng Li

## Table of Contents:
- [Introduction](#introduction)
- [Data Modeling](#data-modeling)
- [User Interface](#user-interface)


## Introduction
  
   Our product is designed to provide a comprehensive system for managing book borrowing, returning, and updating in a bookstore. We aim to create a database that connects the three key personas in this process – customers, employees, and authors – in a seamless and intuitive way. When information about a book is updated in the bookstore, our system will synchronize the relevant data for each persona, ensuring that everyone has access to the latest information. Unlike most current book library management systems, our system also includes a dedicated interface for book authors, recognizing the importance of their involvement in the process. Overall, our goal is to create a user-friendly and efficient solution for managing book data in a bookstore.


## Data Modeling

![203210674-cd210cf5-050f-43a5-bd2e-a396203e32cd](https://user-images.githubusercontent.com/67991315/206334418-92798d5a-111b-4b62-aeb2-b60a92a1ee0e.png)

---

![203208285-cc9af1e3-5a50-4b97-ad95-f3c7d5fd6869](https://user-images.githubusercontent.com/67991315/206334427-21b96772-2469-4e8f-a44c-a404f37dc4d6.png)


## User Interface
  
### Integral interface

Our database project features an integral interface that enables authors, employees, and customers to access the system and perform their respective roles. The interface is tailored to the unique needs of each user group, providing them with the tools and features they need to effectively manage book data in the bookstore. 
  
<img width="970" alt="7B8BFA56-8EFF-46F0-A54A-61BCD98CA669" src="https://user-images.githubusercontent.com/67991315/206945613-ef5480d6-7149-4a63-b2d2-ae200f585df4.png">

  
--- 


### Customer Interface
  
As a customer, you can use the database to find your personal information, search for available books, and view your borrowing history. You can use the search function to quickly find books that interest you, and you can view your personal information, such as your contact details and account status, at any time. Additionally, you can check your borrowing history to see which books you have borrowed in the past, and when they are due for return. 
  
  
  
<img width="804" alt="10E0BF8AD13CFB7687340E36C7934A0D" src="https://user-images.githubusercontent.com/67991315/206946143-3c6dbce9-c17f-4acb-9297-c47219c1b26c.png">

  
---

#### Personal Information
  
  
If the customer information in the database matches the information provided by the customer, the database will automatically display the customer's information in a table or view. 

![35240215-c5344f3c4e77297a99c781ba236990fe](https://user-images.githubusercontent.com/67991315/206946555-a556dd12-2477-45b9-bbb9-7745703e756c.png)
  
  
---

#### Available Books ( Borrow Books )
  
Customers can easily search for books with the status of 'available' directly on the loan screen in the database. To do this, simply navigate to the `Borrow Books`page and use the search function to find books that are currently available for borrowing. Customers can search by book name or other criteria, and the database will display a list of available books that match their search. When you see the book you want, simply input the BookId, return Date and click the 'submit' button to initiate the loan. The database will automatically update the book's status and record the loan in the customer’s personal borrowing history, making it easy for customers to manage their book borrowing needs.


![35240296-d123fb9bb7a3ee3377e7107cdc084fb8](https://user-images.githubusercontent.com/67991315/206947098-5c7e6ad4-dd65-4f3c-806f-567768a5ba0d.png)

---
  

  
