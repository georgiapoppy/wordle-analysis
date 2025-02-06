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
    num_of_vowels = 0;
    for i = 1:5
        if word(i) == 'a' || word(i) == 'e' || word(i) == 'i' || word(i) == 'o' || word(i) == 'u'
            num_of_vowels = num_of_vowels + 1;
        end
    end
    if num_of_vowels == 0
        vowels(1) = vowels(1) + 1;
    elseif num_of_vowels == 1
        vowels(2) = vowels(2) + 1;
    elseif num_of_vowels == 2
        vowels(3) = vowels(3) + 1;
    elseif num_of_vowels == 3
        vowels(4) = vowels(4) + 1;
    elseif num_of_vowels == 4
        vowels(5) = vowels(5) + 1;
    end
end

for i = 1:5
    fprintf("%d\n", vowels(i));
end