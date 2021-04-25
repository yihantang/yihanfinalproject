#' @title plotgender
#' @description This function is used to plot the participants by different variable
#' @details This function is used to see the BMI distribution of participants of different ages.
#' Moreover, the participants are group by how many times they are taking the pills in a week.
#' @aliases plotgender
#' @author Yi-Han Tang
#' @param data data should be a data frame which should contain BMI, age, and drug_frequency
#' @param age The age of the participants
#' @param height The height of the participants
#' @param weight The weight of the participants
#' @param gender
#' @return plot
#'
#'
#' @export
#devtools::use_package("ggplot2", "imports")

plotgender <- function(age, height, weight, ...)
{  BMI<-cal_bmi(height,weight )

g <- ggplot2::ggplot(data, aes(x=age, y=BMI))
g+ geom_point(aes(color=gender))
}
