options(scipen = 999)
options(knitr.kable.NA = '')

##%######################################################%##
#                                                          #
####                    load library                    ####
#                                                          #
##%######################################################%##

library(RTLNotes)
library(ggplot2)


############################################################
#                                                          #
#                   Set Color and Theme                    #
#                                                          #
############################################################

set_color_theme()


############################################################
#                                                          #
#                   Set Persian and Theme                  #
#                                                          #
############################################################

theme_fa <-theme(
  text= element_text(family = "sahel FD"),
  plot.title = element_text(hjust = 0.5, face = "bold", size = 22,vjust = .4),
  plot.subtitle = element_text(hjust = 0.5), 
  axis.text = element_text(size = 14),
  legend.text = element_text(size = 14)
)
  ############################################################
  #                                                          #
  #                   Set En to Fa numbers                   #
  #                                                          #
  ############################################################
  to_fa_numbers <- function(x) {
    persian <- "\u0660\u0661\u0662\u0663\u0664\u0665\u0666\u0667\u0668\u0669\u06F0\u06F1\u06F2\u06F3\u06F4\u06F5\u06F6\u06F7\u06F8\u06F9"
    english <- "\U0030\U0031\U0032\U0033\U0034\U0035\U0036\U0037\U0038\U0039\U0030\U0031\U0032\U0033\U0034\U0035\U0036\U0037\U0038\U0039"
    return(chartr(english,persian, x))
  }

