function MC_Vout = Microcontroller(MC_Vin)

InputArray = [15 20 30 45 10 15 22 50 38 3];
Array_Size = length(InputArray);
m = (5/37);
b = -(5/37)*13;

ConversionArray = zeros(1,Array_Size,'double');
MC_Vout = zeros(1,Array_Size,'double');

for index1 = 1:Array_Size
    if InputArray(index1) > 13
        ConversionArray(index1) = InputArray(index1)*m + b;
    else
        ConversionArray(index1) = 0;
    end
end

if MC_Vin == 3.3
    for index2 = 1:ArraySize
        MC_Vout(index2) = ConversionArray(index2);
    end
else
    for index2 = 1:Array_Size
        MC_Vout(index2) = 0;
    end
end
