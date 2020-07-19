function distance= get_distance(a,b)
[~,~,all]=xlsread('Distances.xlsx');
p=0;q=0;
city1= strcmpi(a,all(1,:));
p=find(city1==1);
city2= strcmpi(b,all(:,1));
q= find(city2==1);
if isempty(p)==1 || isempty(q)==1
    distance=-1;
else
    distance= all{p,q};
end
end
