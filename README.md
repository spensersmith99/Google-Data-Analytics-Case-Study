# Google-Data-Analytics-Case-Study
My Google Data Analytics Case Study.

The goal of this case study was to analyze data from a bike share company called Cyclistic and help determine the best way for them to gain more monthly susbcribers.

## Excel
I began the project by downloading the relevant company data from the first quarter of 2019 into an Excel spreadsheet. I performed the following tasks in order to better understand the information contained in my dataset:
* removed all duplicates and fixed any blank or null values
* sorted based on date of transaction (oldest to newest)
* added trip duration and weekday columns
* applied conditional formatting to User Type column to easily identify who was a subscriber and who was not
* added a filter to Gender column
* concatenated date and time into one column

Next, I analyzed the data using built-in Excel tools:
* created pivot tables that contained information on average trip duration and count of trips by weekday
* performed calculations like average birth year of customer(1982), average trip duration(00:16:56), and busiest day of the week(Thursday)
* graphed daily transactions based on what day of the week it was 
* graphed transactions based on if they were male/female and subscriber/nonsubscriber

![Link to pivot tables and graphs for Q1 2019](https://github.com/spensersmith99/Google-Data-Analytics-Case-Study/tree/main/images)

## SQL (BigQuery)
In order to find more pertinent information on Cyclistic's yearly sales, I constructed a SQL database from the four, separate Excel spreadsheets and appended them into one, year-long data table. Then, I ran the following queries: 

![Link to SQL queries for all of 2019](https://github.com/spensersmith99/Google-Data-Analytics-Case-Study/blob/main/example_queries.sql)

## Tableau 
Afterwards, I created a Tableau dashboard to better visualize the data and draw important conclusions:

![If you have Tableau installed, download the Tableau workbook here](https://github.com/spensersmith99/Google-Data-Analytics-Case-Study/blob/main/spensers_casestudy.twbx)

![If you don't, access the dashboard image here](https://github.com/spensersmith99/Google-Data-Analytics-Case-Study/blob/main/Dashboard%201.pdf)

## Conclusions
Finally, I offered up some viable action steps based on my findings:
* Since subscribers are mostly males who use the bike for short trips during the week (likely commuting to and from work), advertisements intended for young, business professionals who work in inner cities would be ideal to take advantage of a specific audience. 
* Because the work week is often the most popular days, offering an incentive (discount, bonus points, etc.) for people to use the bikes on the weekend would be beneficial to maintaining a more consistent revenue across the entire week.
* Since most of the total bike user population is already comprised of subscribers, resources are best spent acquiring new customers rather than trying to convert current ones into subscribers.
