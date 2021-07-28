function maxDivide(a, b)
  while(floor(a%b) == 0)
    a /= b;
  end
  return a;
end

function isUgly(no)
  x = no;
  x = maxDivide(x, 2);
  x = maxDivide(x, 3);
  x = maxDivide(x, 5);

  return x == 1;
end

function getNthUglyNo(n)
  i = 1;

  count = 1;

  while(n > count)
  i=i+1;
    if(isUgly(i) == true)
       count=count+1;
    end
  end
  return i;
end

input = 10;
println("[INPUT] " , input);
output = getNthUglyNo(input);
println("[OUTPUT] " , output);
