my_ggplot <- ggplot(
  data=IndigenousDeathsData, aes(
  x=Disease_Name, y=Deaths_per_100000_persons, fill=Disease_Name) 
) + 
 geom_bar(stat="identity", width =0.5) + 
 geom_text(aes(label=Deaths_per_100000_persons), vjust= -0.3, size=3.5) + 
 theme_minimal() + 
 ggtitle (" Age Standardised Deaths of Indigenous Australians per 100000 persons between 2011 & 2015") + 
  xlab("Disease Name") +
  ylab(" Deaths per 100000 persons")+
  guides(fill=guide_legend(title = "Disease Name"))+
 scale_fill_viridis(discrete = TRUE, option ="magma") +
 ylim(0,300) + 
 theme(axis.text.x = element_text(angle = 60, hjust=1,size =12), 
       axis.text.y = element_text(hjust=1, size =12),
       axis.title.y = element_text(hjust=0.5, size = 14, margin=margin(t=0, r=20, b=0, l=0)),
       axis.title.x = element_text (hjust=0.5, size = 14),
       plot.title = element_text(hjust=0.5, size=25))

      
      


        
