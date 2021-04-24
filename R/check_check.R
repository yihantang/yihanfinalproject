#' Title check_check
#' @description This function is used to check the qualify of participants.
#' @details This function is used to check the qualify of participants in order to find the target participants.
#' The target participants are the people whose age above 20 years-old and BMI is equal or higher than 25.
#' @aliases check_check
#' @author Yi-Han Tang
#' @param age The age of the participants
#' @param height The height of the participants
#' @param weight The weight of the participants
#'
#' @return
#' @export
#'
#' @examples
#' check_check(25, 170,100)
#' "Eligile"
#'
#' check_check(19,170,100)
#' "Ineligible"
#'

check_check <- function(age, height, weight)
{
  BMI <- cal_bmi(height, weight)
   ifelse(age>20 & BMI >=25,"Eligile", "Ineligible")

}

