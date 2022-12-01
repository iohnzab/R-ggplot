library("ggplot2")
library("palmerpenguins")

#
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species,shape=species))
#
ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))
#
ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g,linetype=species))
#
ggplot(data=penguins)+
  geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g))
#
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=clarity))
#
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(color=species))+
  facet_wrap(~species)
#
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=color,fill=cut))+
  facet_wrap(~cut)
#
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  facet_grid(sex~species)

#title
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle="Sample of three penguins species",
       caption="Data Collected by Dr.kristen Gorman")+
  annotate("text",x=220,y=3500,label="The Gentoos are the largest",color="purple",
           fontface="bold",size=4.5,angle=25)

#making code short 
i<-ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length",subtitle="Sample of three penguins species",
       caption="Data Collected by Dr.kristen Gorman")

#declaring the code short
i+annotate("text",x=220,y=3500,label="The Gentoos are the largest",color="purple",
           fontface="bold",size=4.5,angle=25)

#save the photo
ggsave("Three Penguins Species.png")

  