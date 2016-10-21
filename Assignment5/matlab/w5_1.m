clear all;
load w5_1.mat;

K=1;
N=64;
data = w5_1;
nrofclasses = 2;

for i=1:N
  X=(i-1/2)/N;
  for j=1:N
    Y=(j-1/2)/N;
    result(j,i) = KNN([X Y],K,data,nrofclasses);
  end;
end;

imshow(result,[1 nrofclasses],'InitialMagnification','fit')
hold on;
data=N*data; % scaling

% this is only correct for the first question
plot(data(1:50,1),  data(1:50,2),  'go');
plot(data(51:100,1),data(51:100,2),'r+');
