% states 1..10
% actions 1 2

N=14;
st = zeros(N,1);
A=2;
goal=9;
rand('state',3);
Q=rand(N,2)*0.01;


r=zeros(N,1);
r(goal)=1;

s=ceil(rand*N);
alpha=0.2; % learning rate
epsi=0.4; % random actions
niters=1000;
a=0;
SS=zeros(niters,1);


for i=1:niters,
  if i==niters/2;
    disp('turning down exploration');
    epsi=0.05;
  end;
  
  if s==goal,
    fprintf('reached goal\n');
    figure(1);
    imagesc(st'/2);
    caxis([0 1]);
    text(goal,0.5,'*','FontSize',32);
    axis equal;
    axis off;
    drawnow;
    pause(1);
    s=ceil(rand*N);
  end;
  
   SS(i)=s;
  % act
  [v, a]=max(Q(s,:));

  if rand<epsi;,
    a=ceil(rand*2);
  end;
  
  if a==1,
    snew=s-1;
  elseif a==2,
    snew=s+1;
  end;
  
  if snew<1, snew=1;
  elseif snew>N, snew=N;
  end;
  
  % update Q values
  Q(s,a)=Q(s,a)+alpha*(r(snew)+max(Q(snew,:))-Q(s,a));
  
  s=snew;
  
  st=zeros(N,1);
  st(s)=1;
  figure(1);
  imagesc(st');
  text(goal,0.5,'*','FontSize',32);
  axis equal;
  axis off;
  pause(0.1);
  drawnow;
  
end;

plot(SS);

