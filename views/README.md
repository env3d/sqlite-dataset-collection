# Introduction

From 1830 to 1832, the Japanese artist Katsushika Hokusai created 36 
woodblock prints depicting 36 different views of Mount Fuji, a volcano 
on the Honshū island of Japan. Among the series’ most famous works are 
Fine Wind, Clear Morning and The Great Wave off Kanagawa. The prints 
became so influential that another Japanese artist of the time period—Utagawa
Hiroshige—created his own series of 36 prints, each depicting a new view of Fuji.

In views.db, you’ll find details on the 36 prints created, respectively, by 
Hokusai and Hiroshige. In total, you’ll have data on 72 prints. Prints like 
these tend to be appreciated for their aesthetics, not their statistics, but 
computer science now helps create additional numeric insights about artwork. 
In addition to each print’s title and author, you’ll find some statistics 
commonly used in computational image analysis: the print’s average color, 
its brightness, its contrast, and its entropy. In the accompanying .sql files, 
write SQL queries to answer questions about this database of 72 prints and 
the statistics about their composition.

# Questions

For each of the following questions, you should write a single SQL query 
that outputs the results specified by each problem. Your response must take 
the form of a single SQL query. You should not assume anything about the ids 
of any particular observations: your queries should be accurate even if the 
id of any particular observation were different. Finally, each query should 
return only the data necessary to answer the question.

In 1.sql, write a SQL query that a translator might take interest in: list, 
side by side, the Japanese title and the English title for each print. Ensure 
the Japanese title is the first column, followed by the English title.

In 2.sql, write a SQL query to list the average colors of prints by Hokusai that include “river” in the English title. (As an aside, do they have any hint of blue?)

In 3.sql, write a SQL query to count how many prints by Hokusai include “Fuji” in the English title. Though all of Hokusai’s prints focused on Mt. Fuji, in how many did “Fuji” make it into the title?

In 4.sql, write a SQL query to count how many prints by Hiroshige have English titles that refer to the “Eastern Capital”. Hiroshige’s prints were created in Japan’s “Edo period,” referencing the eastern capital city of Edo, now Tokyo.

In 5.sql, write a SQL query to find the highest contrast value of prints by Hokusai. Name the column “Maximum Contrast”. Does Hokusai’s prints most contrasting print actually have much contrast?

In 6.sql, write a SQL query to find the average entropy of prints by Hiroshige, rounded to two decimal places. Call the resulting column “Hiroshige Average Entropy”.

In 7.sql, write a SQL query to list the English titles of the 5 brightest prints by Hiroshige, from most to least bright. Compare them to this list on Wikipedia to see if your results match the print’s aesthetics.

In 8.sql, write a SQL query to list the English titles of the 5 prints with the least contrast by Hokusai, from least to highest contrast. Compare them to this list on Wikipedia to see if your results match the print’s aesthetics.

In 9.sql, write a SQL query to find the English title and artist of the print with the highest brightness.

In 10.sql, write a SQL query to answer a question of your choice about the prints. The query should:

  1. Make use of AS to rename a column
  1. Involve at least one condition, using WHERE
  1. Sort by at least one column, using ORDER BY