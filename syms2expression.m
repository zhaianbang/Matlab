%%%% Matlab字符串转换为表达式的三种方式
%%以下面的函数表达式为例。
s='x^2+y^2';
%(1)subs替换
f=sym(s);
g=findsym(f);%%也可以直接定义 syms x y ;
subs(f,findsym(f),{1,2});

%(2)内联函数inline
f=inline(s);
f(1,2)

%(3)eval函数evaluate
f=eval(['@(x,y)',s]);
f(2,3)
%%如果s是sym格式，则需要转换为字符串格式char(s)
f=eval(['@(x,y)',char(s)]);
f(2,3)

%%%%%%%%%%%%%%%
syms s
a=ilaplace((s + 3)/(s^2 + 400*s + 800));
a1=inline(char(a));
b1=[];
b2=[];
for t=0:0.01:10
b3=a1(t);
b2=b3;
b1=[b1,b2];
end
t=0:0.01:10;
plot(t,b1,'r','linewidth',2)
