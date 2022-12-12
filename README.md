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
  
  
  
#### Borrowing History
  
Customers can access their book borrowing history by going to the Borrowing History page. This page allows customers to view a list of all the books they have borrowed in the past. Customers can also use the filter conditions on the page to specify the criteria for the books they want to see, such as the year they borrowed the book or the current status of the book (returned, unreturned, or all). This enables customers to easily find the information they need and manage their borrowing history, ensuring that they can keep track of the books they have borrowed and when they are due for return.

![35240467-627ed236546a2f7133c030f15409d920](https://user-images.githubusercontent.com/67991315/206948126-640c1f75-5046-4dc7-8a8e-4f076856fa88.png)

---


### Author Interface

As an author, you can use the database to withdraw money that you have earned from book rentals to your specified bank account. You can access your earnings information and initiate a withdrawal through the specified interface. Additionally, the database provides a range of reports and analytics tools that allow you to track the performance and popularity of your books, as well as the overall trends in the book industry. You can use these reports to gain insights into genre trends, profit rankings, and other data, and you can use this information to inform your writing and publishing decisions. 

  
<img width="645" alt="6A790E1A-4010-4958-8DF5-37AB2C95C4F6" src="https://user-images.githubusercontent.com/67991315/206949158-890f8b02-e092-4536-9c64-8fae1ae7fcc9.png">

---
  
#### Withdraw Money


If an author's information is verified in the database, their bank account information will be automatically displayed in their profile. Authors can then select the bank account they want to use for withdrawals, and they can initiate a withdrawal by clicking the withdraw_money button in the page. This will transfer all the money from the author's deposit to their selected bank account, allowing them to easily access the funds they have earned from book rentals. 

![35240805-b29e968033eba0de363cf6853699aab4](https://user-images.githubusercontent.com/67991315/206949856-92900967-929a-4b65-984b-8c33b5df9c8f.png)

  
  
  
---
  
  
#### Read Report

  
As an author, you can use the database to access a range of reports and analytics tools that provide insights into the performance and popularity of your books, as well as the overall trends in the book industry. We offer three options for reports – profit, genre, and authors – each of which provides different information and insights. The `profit` option allows you to see which books are currently the most popular and profitable, while the `genre` option shows you the trends and patterns in different book genres. The `authors` option allows you to see which authors are currently the most popular and successful, providing valuable insights that can help you to make informed decisions about your writing and publishing.


![206950252-cf848e6d-1887-4a2d-80a5-faea09e6caca](https://user-images.githubusercontent.com/67991315/206950624-b9fa5253-35ed-4acc-9164-d434ce39e22d.png)

  
  
---
