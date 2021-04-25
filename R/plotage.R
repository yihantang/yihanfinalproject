#' @title plotage
#' @description This function is used to plot the participants by different variable
#' @details This function is used to see the BMI distribution of participants of different ages.
#' Moreover, the participants are group by how many times they are taking the Curcumin in a week.
#' @aliases plotage
#' @author Yi-Han Tang
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
#' data <- data.frame(age, BMI, frequency)
#' plotage(data)
#'
#' @export
#devtools::use_package("ggplot2", "imports")



plotage <- function(age, height, weight,drug_frequency, ...)
{  BMI<-cal_bmi(height,weight )

  g <- ggplot2::ggplot(data, aes(x=age, y=BMI))
  g+ geom_point(aes(color=drug_frequency))
}
