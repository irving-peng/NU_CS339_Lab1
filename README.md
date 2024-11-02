# CPDP Databse
In this lab, we will get experience with querying a relational database.  
We will cover the principles of this using relational algebra and the implementation thereof with SQL.  
We will query the Citizen's Police Data ProjectLinks to an external site.'s database, CPDB
Link TO CPDP: https://cpdp.co/
## Questions
1. Give the names of the officers who joined on or after March 15, 2020.  Please give their first name, middle initial, and last name and sort them by last name using their first name in the event of a tie. 
2. What percent of complaint reports are filed by officers?  Please scale your answer to the range of (0.0...100.0).  Hint: you may need to cast any counts to floats your percentage.
3. Who is the newest officer on the force? If it is a tie, list all of the relevant individuals (first, middle initial, and last names) and order them by officer ID (from data_officer.id).
4. List all of the officers with at least 3 unique complaint reports filed against them. In other words, the allegations will have different values for data officer_allegation.allegation_id. Output their officer IDs, first and last names. Sort them by their officer ID. Hint: The allegation_count field in data_officer will count the allegations, but not the complaint reports.
5. How many officers per capita are assigned to each police district? Count only the ones that are active (i.e., have active set to true in data_officer). Please calculate your answer in officers per 10,000 community members. Your output should have the district name (from data_policeunit.unit_name) and its officers per capita sorted in descending order so that the most heavily policed districts come first. Hint: you can find the population of each district by joining with the table data_racepopulation. You may need to do some string manipulation to line up the unit names.
6. If two or more officers are named in the same complaint report, we say those officers are co-accused. Find the unique pairs of officers who are co-accused where each officer is assigned to a different police unit. Output their officer IDs (where the left ID is less than the right) and the ID of their most recent police unit and sort on their officer IDs.
7. What is the average number of TRRs per officer? What about the min and max per officer?  Make sure to include ones who have filed no TRRs in your calculations.
8. What is the maximum sustained allegation count for officers in each rank. Hint: you can use data_officer.sustained_count for this. Use their current rank. Sort your results in descending order with the highest max count first.  Assume each rank has greater than one officer associated with it.
9. How many allegations per year were sustained (SU) or exonerated (EX)? You may use the field data_officerallegation.final_finding for your count. Use the end date of the complaint report's investigation to categorize the allegations.
10. What are the 5 most common civilian complaints? Display their category, allegation name, and count with the most common one first.
