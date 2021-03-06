% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotage_separate.R
\name{plotage_separate}
\alias{plotage_separate}
\title{plotage_separate}
\usage{
plotage_separate(data, age, height, weight, drug_frequency, ...)
}
\arguments{
\item{data}{data should be a data frame which should contain BMI, age, and drug_frequency}

\item{age}{The age of the participants}

\item{height}{The height of the participants}

\item{weight}{The weight of the participants}

\item{drug_frequency}{How many time the participant take medicine}
}
\value{
plot
}
\description{
This function is used to plot the participants by different variable separately.
}
\details{
This function is used to see the BMI distribution of participants of different ages.
Moreover, the participants are group by how many times they are taking the pills in a week.
}
\examples{
age <- c(25,40)
BMI <- c(25,35)
drug_frequency <- c(3,5)
data <- data.frame(age, BMI, drug_frequency)
plotage_separate(data, data$age, data$BMI, data$drug_frequency)

}
\author{
Yi-Han Tang
}
