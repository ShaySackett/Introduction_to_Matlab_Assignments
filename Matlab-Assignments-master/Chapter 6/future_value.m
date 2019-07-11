function result = future_value(PV,I,N)

I = I *.01;

result = PV .* (1 + I).^N;