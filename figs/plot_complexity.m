clear all
close all


N=150;

eq2=zeros(1,N);
eq3=zeros(1,N);
eq4=zeros(1,N);
eq5=zeros(1,N);
eq6=zeros(1,N);


for n=1:N
    
    temp2=0;
    temp3=0;
    
    for k=1:n
        temp2=nchoosek(n,k)*factorial(k)+temp2;
        temp3=nchoosek(n,k)+temp3;
    end
    
    eq2(n)=temp2;
    eq3(n)=temp3;
    
    
end

F1=20;
F2=40;
F3=50;
for n=1:N
    

    temp3=0;
    for k=1:floor(n/F1)
        temp3=nchoosek(floor(n/F1),k)+temp3;
    end
    eq4(n)=temp3;
    
    temp4=0;
    for k=1:floor(n/F2)
        temp4=nchoosek(floor(n/F2),k)+temp4;
    end
    eq5(n)=temp4;
    
    temp5=0;
    for k=1:floor(n/F3)
        temp5=nchoosek(floor(n/F3),k)+temp5;
    end
    eq6(n)=temp5;
    
    
end


figure
semilogy(1:N,eq2,'r','LineWidth',3)
hold on
semilogy(1:N,eq3,'g','LineWidth',3);
hold on
set(gca,'FontSize',14)
set(gca,'FontWeight','Bold')
grid on
xlabel('Number of Transforms (N)','FontWeight','Bold')
ylabel('Number of Transform Sequences','FontWeight','Bold');
legend('Order Dependent', 'Order Independent','Location','NorthWest');
axis tight

figure
semilogy(1:N,eq2,'r','LineWidth',3)
set(gca,'FontSize',14)
set(gca,'FontWeight','Bold')
grid on
xlabel('Number of Transforms (N)','FontWeight','Bold')
ylabel('Number of Transform Seqeunces','FontWeight','Bold');
axis tight


figure
% semilogy(1:N,eq3,'g','LineWidth',3);
% hold on
semilogy(1:N,eq4,'b','LineWidth',3);
hold on
semilogy(1:N,eq5,'c','LineWidth',3);
semilogy(1:N,eq6,'m','LineWidth',3);
set(gca,'FontSize',14)
set(gca,'FontWeight','Bold')
axis tight
grid on
xlabel('Number of Transforms (N)','FontWeight','Bold')
ylabel('Number of Transform Sequences','FontWeight','Bold');



legend('20 Independent Sets','40 Independent Sets','50 Independent Sets','Location','NorthWest');%,'Equation 4 - 2 MVFs');% 'Equation 4 - 5 MVFS ', 'Equation 4 - 10 MVFS', 