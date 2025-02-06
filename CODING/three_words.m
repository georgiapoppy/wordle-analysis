clear;
clc;

vowels = zeros(1, 5);

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
    check = 1;
    for i = 1:5
        if word(i) == 'm' || word(i) == 'g' || word(i) == 'b' || word(i) == 'f' || word(i) == 'k' || word(i) == 'w' || word(i) == 'v' || word(i) == 'z' || word(i) == 'x' || word(i) == 'q' || word(i) == 'j'
            check = 0;
        end
    end
    if check == 1
        
    end
end

for i = 1:5
    fprintf("%d\n", vowels(i));
end