september <- read_csv("202109-divvy-tripdata.csv")
august <- read_csv("202108-divvy-tripdata.csv")
july <- read_csv("202107-divvy-tripdata.csv")
#unite three months into a quarter
q1 <- bind_rows(september, august, july)
#delete unnecessary columns
q1 <- q1 %>%  select(-c(start_lat, start_lng, end_lat, end_lng))
#delte rows with NA or empty values in relevant columns
q1 <- q1[!(is.na(q1$ride_id) | q1$ride_id==""), ]
q1 <- q1[!(is.na(q1$rideable_type) | q1$rideable_type==""), ]
q1 <- q1[!(is.na(q1$started_at) | q1$started_at==""), ]
q1 <- q1[!(is.na(q1$ended_at) | q1$ended_at==""), ]
q1 <- q1[!(is.na(q1$member_casual) | q1$member_casual==""), ]
