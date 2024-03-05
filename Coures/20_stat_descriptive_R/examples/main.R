
data <- c(2.5, 6.3 ,3.3, 6.2 ,13.5 ,22.4, 2.5, 8.5, 3.5 ,23.3, 2.2, 5.8)
names <- c( 'C' , 'LFI', 'Gen' ,'EEES' ,'EE' ,'LREM', 'UDI', 'UDC', 'DLF', 'RN' ,'PA' ,'Autres')
names
barplot(data , names= names)
pie(data , labels=names)

barplot(c(235,183,285,139,88,67,3),names=c(0,1,2,3,4,5,6))
