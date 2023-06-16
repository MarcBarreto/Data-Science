#instalando os pacotes

install.packages("tidyverse")
install.packages("dplyr")
install.packages("solitude")
install.packages("ggplot2")
install.packages("readr")


#carregando os pacotes

library(tidyverse)
library(dplyr)
library(solitude)
library(ggplot2)
library(readr)

# Carregando base de dados
dataset <- read.csv("dados_historicos.csv")
view(dataset)

# criando o modelo

?isolationForest
model = isolationForest$new()

model$fit(dataset)

# prevendo valores
predict = dataset %>% 
  model$predict() %>%
  arrange(desc(anomaly_score))

view(predict)

# Density plot
plot(density(predict$anomaly_score))

predict_index = predict[which(predict$anomaly_score > 0.62)]

anomaly = dataset[predict_index$id, ]
normal = dataset[-predict_index$id, ]

#Graph
colors()
ggplot() + 
  geom_point(data = normal,
             mapping = aes(transacao1, transacao2),
             col = "skyblue3",
             alpha = 0.5) +
  geom_point(data = anomaly,
             mapping = aes(transacao1, transacao2),
             col = "red2",
             alpha = 0.8)

#Predict with new data
new_data <- read.csv("novos_dados.csv")
view(new_data)

predict_new_data = model$predict(new_data)

index_new_data = predict_new_data[which(predict_new_data$anomaly_score > 0.62)]

anomaly_new_data = new_data[index_new_data$id, ]
normal_new_data = new_data[-index_new_data$id, ]

#graph
ggplot() + 
  geom_point(data = normal_new_data,
             mapping = aes(transacao1, transacao2),
             col = "skyblue3",
             alpha = 0.5) +
  geom_point(data = anomaly_new_data,
             mapping = aes(transacao1, transacao2),
             col = "red2",
             alpha = 0.8)

predict_new_data <- predict_new_data %>%
  mutate(anomaly_score = round(anomaly_score, 2))

predict_new_data <- predict_new_data %>%
  mutate(status = ifelse(anomaly_score > 0.62, "anomaly", "normal"))

view(predict_new_data)

ggplot(predict_new_data, aes(x = status, y = anomaly_score, fill = status)) +
  geom_boxplot() +
  labs(title = "Box Plot: Anomaly and Normal",
       x = "Status",
       y = "Anomaly Score") +
  theme_minimal() +
  scale_fill_manual(values = c("anomaly" = "red", "normal" = "blue")) +
  theme(legend.position = "none")

write.csv(predict_new_data, "previsoes_novos_dados.csv")
