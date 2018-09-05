function plothyst(s,c)%s:filename d:the direction of external field c:color of the hyst
h=strcat(s,'.hyst')
A=importdata(h);
A=A.data;
a=A(:,2).*1000;
b=A(:,1);
datax=[a;-a];
datay=[b;-b];
plot(datax,datay,c);
hold on;
% legend(strcat('hyst',d),'location','northwest');
% legend('boxoff');
xlabel('Field(mT)');
ylabel('M/Ms');
% title(strrep(s,'_','\_'));%when the filename contains the "underline"£¬ this
% command can make the underline display
grid on;
end
