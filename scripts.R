
library(yaml)
pg=read.csv("~/Repos/radiocarbon2017/_data/radiocarbonCourseProgram.csv")

istr=yaml.load_file("~/Repos/radiocarbon2017/_data/instructors.yml")

emls=NULL
for(i in 1:11){
  emls[i]=istr[[i]]$email
}

paste0(emls, sep=";", collapse = " ")

ptcp=read.csv("~/Documents/Teach/Radiocarbon/2017/Letters/participantList.csv")

paste0(ptcp$email, sep=";", collapse = " ")

extrl=ptcp[ptcp$affil!="MPI-BGC",c(1,2,5,6,7)]
write.csv(data.frame(extrl,Group=rep(1:4,6)), "~/Repos/radiocarbon2017/_data/labgroups.csv")

