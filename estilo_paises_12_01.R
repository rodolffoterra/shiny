# Perfil de outros países

country <- data.frame(países = c('África do Sul',
                                 'Alemanha',
                                 'Brasil',
                                 'China',
                                 'Espanha',
                                 'Estados Unidos',
                                 'França',
                                 'Índia',
                                 'Itália',
                                 'Japão',
                                 'México',
                                 'Reino Unido',
                                 'Rússia'),
                      x = c(7,4,3,3,8,3,4,7,3,8,3,6,4),
                      y = c(2,1,9,9,3,9,3,7,7,4,9,2,1))

country$estilo <- ifelse(country$x < 5 & country$y >5,'Catalisados',
                         ifelse(country$x < 5 & country$y <5,'Controladors',
                                ifelse(country$x > 5 & country$y >5,'Apoiador',
                                       'Analítico')))


ggplot(country, aes(x=x, y=y)) +
  geom_point(color = 'steelblue4', size=5) +
  theme_classic()+
  xlim(0,10) + ylim(0,10) +
  labs(x = NULL,
       y = NULL,
       title = 'Perfil Comportamental') + 
  geom_hline(yintercept=5, linetype="dashed", color = "gray") +
  geom_vline(xintercept = 5, linetype="dashed",color = "gray")   +
  ggplot2::annotate('text', x = 0.5, y = 5.5, label = "CATALIZADOR") + 
  ggplot2::annotate('text', x = 9.5, y = 5.5, label = "APOIADOR") + 
  ggplot2::annotate('text', x = 0.5, y = 0.3, label = "CONTROLADOR") + 
  ggplot2::annotate('text', x = 9.5, y = 0.3, label = "ANALÍTICO") + 
  ggplot2::annotate('text', x = country[1,2]+0.3, y = country[1,3]-0.2, label = country[1,1]) + 
  ggplot2::annotate('text', x = country[2,2]-0.3, y = country[2,3]+0.2, label = country[2,1]) + 
  ggplot2::annotate('text', x = country[3,2]-0.4, y = country[3,3]-0.2, label = country[3,1]) + 
  ggplot2::annotate('text', x = country[4,2]+0.3, y = country[4,3]+0.3, label = country[4,1]) + 
  ggplot2::annotate('text', x = country[5,2]+0.3, y = country[5,3]-0.2, label = country[5,1])+ 
  ggplot2::annotate('text', x = country[6,2]+0.7, y = country[6,3]-0.2, label = country[6,1])+ 
  ggplot2::annotate('text', x = country[7,2]+0.3, y = country[7,3]-0.2, label = country[7,1])+ 
  ggplot2::annotate('text', x = country[8,2]+0.3, y = country[8,3]-0.2, label = country[8,1])+ 
  ggplot2::annotate('text', x = country[9,2]+0.3, y = country[9,3]-0.2, label = country[9,1])+ 
  ggplot2::annotate('text', x = country[10,2]+0.3, y = country[10,3]-0.2, label = country[10,1])+ 
  ggplot2::annotate('text', x = country[11,2]-0.3, y = country[11,3]+0.5, label = country[11,1])+ 
  ggplot2::annotate('text', x = country[12,2]-0.3, y = country[12,3]-0.2, label = country[12,1])+ 
  ggplot2::annotate('text', x = country[13,2]+0.3, y = country[13,3]-0.2, label = country[13,1]) + 
  theme(axis.text.y=element_blank(),axis.text.x=element_blank())
