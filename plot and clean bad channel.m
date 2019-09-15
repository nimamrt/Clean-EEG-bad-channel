subject=input('subject number= ')
[data]=load(['subj_',num2str(subject)])

data=data.(['subj_',num2str(subject)])


data=data';
L=length(data);
fs=512;  %freq sampling
time=0:1/fs:(L/fs)-1/fs;

for i=1:19;  %display 19 channel
    
    if mod(i,2)==0;  %chamge signal color decussate
        rb=('r');
    else
        rb=('b');
    end
   
plot(time,data(i,:),rb)
%xlim([0 5])
a = num2str(i);
ch=('Channel');
xlabel('Time(S)');
ylabel('Magnitude');
title({ch,a});  %insert number of channel on title

%pause %pause for every signal that after click go to next

inp=input('Enter a number: ') %if 2-->exit 1-->clean data
switch inp
    case 1
      data(i,:)=NaN
    case 2
       continue
end


end