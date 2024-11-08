# 1. Creating a vector using : operator
# a. Sequence from -5 to 5
seq_vector <- -5:5
seq_vector

# b. x <- 1:7, the value of x
x <- 1:7
x

# 2. Creating a vector using seq() function
# a. Sequence from 1 to 3 with a step size of 0.2

seq_vector_2 <- seq(1, 3, by=0.2)
seq_vector_2


# 3. Worker ages vector and accessing specific elements
ages <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 
          49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24, 33, 41, 53, 40, 18, 44, 
          38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)

# a. Access the 3rd element
ages[3]



# b. Access the 2nd and 4th elements
ages[c(2, 4)]

# c. Access all but the 4th and 12th elements
ages[-c(4, 12)]

# 4. Named vector x
x <- c("first" = 3, "second" = 0, "third" = 9)
names(x)
x[c("first", "third")]

# 5. Sequence from -3:2 and modifying the second element
x_seq <- -3:2
x_seq[2] <- 0
x_seq

# 6. Fuel purchase data frame
#a. Create a data frame for month, price per liter (php)and purchase-quantity (liter)
fuel_data <- data.frame(
  Month = c("Jan", "Feb", "March", "Apr", "May", "June"),
  Price_per_liter = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  Purchase_quantity = c(25, 30, 40, 50, 10, 45))
fuel_data

# b. Calculate average fuel expenditure
weighted.mean(fuel_data$Price_per_liter, fuel_data$Purchase_quantity)

# 7. Rivers dataset
# a. Load the 'rivers' dataset
data(rivers)

# Create a vector with various statistics about the rivers dataset
river_stats <- c(
  length(rivers),    # number of elements
  sum(rivers),       # sum
  mean(rivers),      # mean
  median(rivers),    # median
  var(rivers),       # variance
  sd(rivers),        # standard deviation
  min(rivers),       # minimum
  max(rivers)        # maximum
)
print(river_stats)
# b. The output will display these statistical values from the 'rivers' dataset

# 8. Forbes Ranking

# a. Create vectors for the celebrities table 
# Assuming sample data for the table
celebrity_names <- c("Oprah Winfrey", "Tiger Woods", "Angelina Jolie", "Beyonce", "J.K. Rowling")
pay <- c(275, 115, 120, 87, 60)  # Example of celebrity pay in millions

# Print the vectors
celebrity_names
pay


# b. Modify J.K. Rowling's ranking to 15 and pay to 90
ranking <- c(1, 2, 3, 4, 5)  # Example ranking for the celebrities
names(ranking) <- celebrity_names

# Modify J.K. Rowling's ranking and pay
ranking["J.K. Rowling"] <- 15
pay[celebrity_names == "J.K. Rowling"] <- 90

# Print updated ranking and pay
ranking
pay


# c. Export the table as a CSV and save it as PowerRanking.csv
# Create a data frame for ranking and pay
power_ranking_df <- data.frame(Name = celebrity_names, Ranking = ranking, Pay = pay)

# Save as CSV
write.csv(power_ranking_df, file = "PowerRanking.csv", row.names = FALSE)


# d. Access rows 10 to 20 (assuming more data is added), and save them as Ranks.RData
# Access rows 10 to 20
subset_data <- power_ranking_df[10:20, ]

# Save the subset as RData
save(subset_data, file = "Ranks.RData")

# Output the subset data
print(subset_data)

# 9.a. Import the Excel file into RStudio:
library(readxl)
hotels_data <- read_excel("hotels-vienna.xlsx")

# b. Check dimensions of the dataset
print(dim(hotels_data))

# c. Select specific columns based on actual column names
selected_hotels <- hotels_data[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]  # Adjust 'ratings' to 'rating' if necessary
print(selected_hotels)


# d. Save the selected data as new.RData
save(selected_hotels, file = "new.RData")



# e. Display the first six and last six rows of the dataset
print(head(selected_hotels))
print(tail(selected_hotels))

# 10. List of vegetables
# a. Create a list of 10 vegetables
veggies <- c("Carrot", "Broccoli", "Spinach", "Tomato", "Cucumber", "Pepper", "Onion", "Garlic", "Potato", "Lettuce")
print(veggies)

# b. Add 2 more vegetables
veggies <- c(veggies, "Pumpkin", "Zucchini")
print(veggies)

# c. Add 4 more vegetables after the 5th index
veggies <- append(veggies, c("Eggplant", "Radish", "Mushroom", "Beetroot"), after = 5)
print(veggies)

# How many vegetables?
print(length(veggies))

# d. Remove vegetables at indices 5, 10, and 15
veggies <- veggies[-c(5, 10, 15)]
print(veggies)

# How many vegetables left?
print(length(veggies))


