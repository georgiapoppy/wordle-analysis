clear;
clc;

position = zeros(1, 5);

file = fopen('valid_answers.txt', 'rb'); %reads from file
fseek(file, 0, 'eof');
fileSize = ftell(file);
frewind(file);
data = fread(file, fileSize, 'uint8');
numLines = sum(data == 10);
fclose(file);

file = fopen('valid_answers.txt');

for i = 1:numLines
    line = fgetl(file);  % read one line excluding newline character
    word = char(line);
    num_of_vowels = 0;
    for i = 1:5
        if word(i) == 'c'
            if i == 1;
                position(1) = position(1) + 1;
            elseif i == 2
                position(2) = position(2) + 1;
            elseif i == 3
                position(3) = position(3) + 1;
            elseif i == 4
                position(4) = position(4) + 1;
            elseif i == 5
                position(5) = position(5) + 1;
            end
        end
    end
end

for i = 1:5
    fprintf("%d\n", position(i));
end