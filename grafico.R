library(ggplot2)


x = 6
y = 6
cart <- data.frame(x= x,
                   y = y)

# Basic scatter plot
ggplot(cart, aes(x=x, y=y)) +
  geom_point(color = 'steelblue4', size=10) +
  theme_classic()+
  xlim(0,10) + ylim(0,10) +
  labs(x = NULL,
       y = NULL,
       title = 'Perfil Comportamental') + 
  geom_hline(yintercept=5, linetype="dashed", color = "gray") +
  geom_vline(xintercept = 5, linetype="dashed",color = "gray")+
  ggplot2::annotate('text', x = 2, y = 9, label = "CATALIZADOR") + 
  ggplot2::annotate('text', x = 8, y = 9, label = "APOIADOR") + 
  ggplot2::annotate('text', x = 2, y = 1, label = "CONTROLADOR") + 
  ggplot2::annotate('text', x = 8, y = 1, label = "ANALÍTICO") + 
  theme(axis.text.y=element_blank(),axis.text.x=element_blank())
   




