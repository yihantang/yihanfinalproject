#'@title cal_bmi
#'@description Calculate the BMI of participants
#'@details This function is used to calculate the BMI for participants.
#'@aliases cal_bmi
#'@author Yi-Han Tang
#'@param height The height of the participants
#'@param weight The weight of the participants
#'@return BMI
#'
#'@export
#'
#'@example cal_bmi(170, 78)
#'


cal_bmi<-function(height,weight){

  height.m <- height/100
  BMI <- weight / height.m**2
  return(BMI)
}
