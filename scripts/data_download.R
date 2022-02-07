#### Preamble ####
# Purpose: Download data from opendatatoronto
# Author: Mingyang Li
# Data: 26 January 2022
# Contact: wowsmyl.li@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(opendatatoronto)
library(dplyr)

#### Data Download ####
# From https://open.toronto.ca/dataset/police-annual-statistical-report-search-of-persons/

# Packages contains datasets that are about the topic. Using a unique key for 
# the package, we can access the datasets of the link.

# get package
package <- show_package("53d5ab6a-f201-4c0d-bf22-504d0918c361")
package

# get all resources for this package
resources <- list_package_resources("53d5ab6a-f201-4c0d-bf22-504d0918c361")


# load the first datastore resource as a sample
search_of_person <- 
  resources %>% 
  get_resource()


#### Save data ####
write.csv(search_of_person, "inputs/data/search_of_person.csv")
