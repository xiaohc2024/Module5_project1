## @knitr makeCharts


library(stringr)
ggplot(sdat, aes(x = steak_prep, fill = female)) +
  geom_bar(position="dodge",colour="black") +
  ggtitle(paste0("Steak Preference by Gender: ",
                 params$region," Region")) +
  xlab("Steak Preparation Preference") +
  ylab("Number of Respondents") +
  scale_fill_manual(values=c("skyblue","palevioletred"),
                    name="Gender",
                    breaks=c(FALSE,TRUE),
                    labels=c("Male", "Female")) +
  theme_fivethirtyeight()
