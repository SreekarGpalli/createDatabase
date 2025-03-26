Executive Summary:
Wholesale Store is a leading wholesale distribution company that specializes in providing a wide range of 
products to various retail businesses across multiple sectors, including food and beverage, electronics, 
and household goods. The company has established a vast network of vendors and logistics partners, 
enabling efficient and reliable distribution services across the region.
The cornerstone of Wholesale Store's success lies in its customer-centric approach, focusing on 
understanding the unique needs of each retail client and offering tailored solutions to meet those needs. 
This approach includes implementing strategic promotional campaigns and offering various payment 
options to cater to diverse client preferences. Wholesale Store's promotional strategies involve offering 
discounts, special deals, and targeted marketing campaigns to drive sales and foster customer loyalty. 
Additionally, the company provides a range of payment methods, including credit cards, online payment 
platforms, and bank transfers, to ensure a seamless and convenient transaction experience for its clients.
Wholesale Store's team of dedicated sales representatives plays a crucial role in building long-lasting 
relationships with clients, characterized by trust, reliability, and mutual growth. The company leverages 
its comprehensive database solution to streamline inventory management, order processing, vendor and 
client management, sales and logistics coordination, and financial tracking. This database system 
incorporates modules for managing promotions, tracking discounts applied to products and sales, and 
maintaining records of payment methods used for transactions.
As Wholesale Store looks to the future, it aims to expand its footprint, exploring new markets and 
embracing innovative technologies to enhance its operational efficiencies and customer service further. 
The company is dedicated to remaining at the forefront of the wholesale distribution industry, 
continuously adapting to the changing retail landscape and the evolving needs of its clients while 
leveraging its robust database solution and strategic promotional and payment capabilities.
Problem Statement
As Wholesale Store continues to expand its operations and client base, it faces increasingly complex 
challenges that threaten its efficiency, customer satisfaction, and scalability. The company's existing 
manual and semi-automated systems are proving inadequate to handle the growing complexity and 
volume of transactions, leading to several critical operational issues:
Inventory Management Inefficiency: Difficulty in tracking and managing stock levels in real-time, leading 
to overstocking or stockouts.
Order Processing Delays: Slow manual processes for order entry, processing, and fulfillment.
Vendor and Client Management Limitations: Inefficiencies in managing extensive vendor and client 
databases with varying needs and specifications.
Sales and Logistics Coordination: Challenges in coordinating between sales teams and logistics partners, 
affecting delivery timelines.
Data Accessibility and Reporting: Limited ability to access real-time data and generate insightful reports 
for strategic decision-making.
Scalability Concerns: Existing systems are not equipped to scale with the business, limiting potential 
growth.
Promotion Management Shortcomings: Lack of an integrated system to manage and track the impact of 
promotional campaigns on sales and inventory.
4
Payment Processing Inefficiencies: Restricted payment options and slow processing times that affect 
customer experience and operational fluidity.
While WholesaleStore has implemented various promotional strategies to drive sales and foster customer 
loyalty, managing these campaigns manually or through disparate systems has become increasingly 
challenging. The lack of a centralized system for tracking promotions, applying discounts, and analyzing 
the effectiveness of campaigns hinders the company's ability to optimize its marketing efforts and 
maximize revenue potential.
Furthermore, the current systems in place offer limited payment options for clients, potentially restricting 
sales and hindering customer satisfaction. Comprehensive financial tracking and reconciliation processes 
are also hindered due to the lack of integration between payment methods and sales records.
To address these challenges, "WholesaleStore" requires a comprehensive database solution that 
streamlines inventory management, order processing, vendor and client management, sales and logistics 
coordination, and financial tracking. Additionally, the database system must incorporate modules for 
managing promotions, tracking discounts applied to products and sales, and maintaining records of 
payment methods used for transactions. Implementing such a database system is essential for enhancing 
operational efficiencies, improving customer service, optimizing marketing efforts, and ensuring 
"WholesaleStore" remains competitive in the wholesale distribution industry.
Entities:
We have identified below entities.
• Categories: Classifies products into various categories.
• Clients: Records details of retail businesses purchasing from "Wholesale Store."
• Sales Representative: Information about employees responsible for managing 
client accounts.
• Logistics: Details of shipping and logistics partners used for order delivery.
• Vendors: Information on suppliers from whom products are sourced.
• Products: The catalog of items available for sale includes vendor and category 
details.
• Sales: Records of sales transactions, including client, sales representative, and 
logistics details.
• SaleDetails: Detailed items of each sale, including product and quantity.
• Promotions: Handles various discounts, special deals or promotional campaigns.
• Payment Methods: To track and manage how clients pay for their purchases.
Attributes:
These are the attributes after applying normalization.
Categories: CategoryID (Primary Key), CategoryName, Description,
Clients: ClientID (Primary Key), ClientName, ContactName, Phone, Email, Address, City, ZipCode, Country, 
RegistrationDate
Sales Representatives: RepresentativeID (Primary Key), LastName, FirstName, Phone, Email, HireDate, 
Region
5
Logistics: CarrierID (Primary Key), CarrierName, Phone, Email, Address, City, ZipCode, Country
Vendors: VendorID (Primary Key), VendorName, ContactName, Address, City, ZipCode, Country, Phone, 
Email, RegistrationDate
Products: ProductID (Primary Key), ProductName, VendorID (Foreign Key), CategoryID (Foreign Key), Unit, 
Quantity, Price
Sales: SaleID (Primary Key), ClientID (Foreign Key), RepresentativeID (Foreign Key), SaleDate, CarrierID 
(Foreign Key)
SaleDetails: SaleDetailID (Primary Key), SaleID (Foreign Key), ProductID (Foreign Key), Quantity, 
TotalAmount
Promotions: PromotionID (Primary Key), Description, StartDate, EndDate, DiscountRate, Conditions
Payment Methods: PaymentMethodID (Primary Key), MethodName, ProcessingTime, Fees, Details
