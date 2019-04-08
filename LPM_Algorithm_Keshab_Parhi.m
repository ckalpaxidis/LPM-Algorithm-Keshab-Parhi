clc; clear;
% a = input ("enter L1 matrix dimensions: ");
% for b = 1:a %counter
%     for c = 1:a %counter 
%       D(b,c)=input('elements: ')
%     end
% end
% L1=reshape(D,a,a)
% L1 matrix example
L1 = [-1, 0, -1, -1, -1, -1, -1, -1;
    -1, -1, 0, -1, -1, -1, -1, -1;
    -1, -1, -1, 0, -1, -1, -1, -1;
    39, -1, -1, -1, 21, -1, -1, -1;
    -1, -1, -1, -1, -1, 0, -1, -1;
    -1, -1, -1, -1, -1, -1, 0, -1;
    -1, -1, -1, -1, -1, -1, -1, 0;
    42, -1, -1, -1, 22, -1, -1, -1];
i=1; %counter 
j=1; %counter 
k=1; %counter
m=1; %counter
M=L1;
for m = 2:1:length(L1) %counter
    for i = 1:1:length(L1) %counter
        for  j = 1:1:length(L1) %counter
            for k = 1:1:length(L1) %counter
                if L1(i,k) == -1 || M(k,j) == -1
                    K(1,k)=-1;
                else
                    K(1,k) = L1(i,k) + M(k,j);
                end
                L.m(i,j) = max(K);
                Z(i,m)= L.m(i,i)/m ; %iteration bound necessary
            end
        end
    end
    M = L.m;
    disp("matrix " + "L"+ m + " is:")
    disp(L.m)
end
%iteration bound
disp("iteration bound is:")
disp(max(max(Z)))