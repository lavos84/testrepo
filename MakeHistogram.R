# This script will produce a histogram representing the ratings I have
# given myself in the specified categories pertaining to data science
# skills.

# Create a data.frame and assign values to each category
Andrew <- data.frame(category = c(
  "Computer Programming","Math","Statistics", "Machine Learning",
  "Domain Expertise","Communication and Presentation Skills","Data Visualization"),
  rating= c(4,5,3,3,4,4,2))

# Set the size parameters of the plot
par(fig= c(0,1,0,1), mar= c(5.1,4.1,4.1,2.1))
# Add the Categories to the histogram
midpoints= barplot(Andrew$rating, xlab= "Rating",
                   horiz= TRUE, main = "Question 4")
text(0, midpoints, labels= Andrew$category, pos = 4)
