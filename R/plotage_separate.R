#' @title plotage_separate
#' @description This function is used to plot the participants by different variable separately.
#' @details This function is used to see the BMI distribution of participants of different ages.
#' Moreover, the participants are group by how many times they are taking the pills in a week.
#' @aliases plotage_separate
#' @author Yi-Han Tang
#' @param data data should be a data frame which should contain BMI, age, and drug_frequency
#' @param age The age of the participants
#' @param height The height of the participants
#' @param weight The weight of the participants
#' @param drug_frequency How many time the participant take medicine
#' @return plot
#'
#' @examples
#' age <- c(25,40)
#' BMI <- c(25,35)
#' drug_frequency <- c(3,5)
#' data <- data.frame(age, BMI, drug_frequency)
#' plotage_separate(data, data$age, data$BMI, data$drug_frequency)
#'
#' @export
#devtools::use_package("ggplot2", "imports")

plotage_separate <- function(data, age, height, weight,drug_frequency, ...)
{
  BMI<-cal_bmi(height,weight )

g <- ggplot2::ggplot(data, aes(x=age, y=BMI))
g+ geom_point()+facet_wrap(vars(drug_frequency))
}

