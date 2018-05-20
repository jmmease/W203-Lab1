require(XML)
?xmlParse

myfilename="F:/users/jddel/Documents/DATA_SCIENCE_DEGREE_LAPTOP/W203_Stats/Lab_01/rows.xml"

data <- xmlParse("F:/users/jddel/Documents/DATA_SCIENCE_DEGREE_LAPTOP/W203_Stats/Lab_01/rows.xml")
xml_data <- xmlToList(data)

level2<-xml_data[1]


?as.list

level2 <- as.list(xml_data[1][1])


############# 2nd attempt
xmlfile <- xmlTreeParse(myfilename)
topxml <- xmlRoot(xmlfile)

topxml <- xmlSApply(topxml,
                    function(x) xmlSApply(x, xmlValue))

snot<-head(topxml)

############# 3rd attempt

## Install the required package with:
install.packages("RSocrata")

library("RSocrata")

df <- read.socrata(
  "https://data.wa.gov/resource/5zew-ckgs.json",
  app_token = "YOURAPPTOKENHERE",
  email     = "user@example.com",
  password  = "fakepassword"
)