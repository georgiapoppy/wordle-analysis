clear;
clc;

alphabet = zeros(1, 26);

file = fopen('valid_guesses.txt', 'rb'); %reads from file
fseek(file, 0, 'eof');
fileSize = ftell(file);
frewind(file);
data = fread(file, fileSize, 'uint8');
numLines = sum(data == 10);
fclose(file);

file = fopen('valid_guesses.txt');

for i = 1:numLines
    line = fgetl(file);  % read one line excluding newline character
    word = char(line);
    for i = 1:5
        if word(i) == 'a'
            alphabet(1) = alphabet(1) + 1;
        elseif word(i) == 'b'
            alphabet(2) = alphabet(2) + 1;
        elseif word(i) == 'c'
            alphabet(3) = alphabet(3) + 1;
        elseif word(i) == 'd'
            alphabet(4) = alphabet(4) + 1;
        elseif word(i) == 'e'
            alphabet(5) = alphabet(5) + 1;
        elseif word(i) == 'f'
            alphabet(6) = alphabet(6) + 1;
        elseif word(i) == 'g'
            alphabet(7) = alphabet(7) + 1;
        elseif word(i) == 'h'
            alphabet(8) = alphabet(8) + 1;
        elseif word(i) == 'i'
            alphabet(9) = alphabet(9) + 1;
        elseif word(i) == 'j'
            alphabet(10) = alphabet(10) + 1;
        elseif word(i) == 'k'
            alphabet(11) = alphabet(11) + 1;
        elseif word(i) == 'l'
            alphabet(12) = alphabet(12) + 1;
        elseif word(i) == 'm'
            alphabet(13) = alphabet(13) + 1;
        elseif word(i) == 'n'
            alphabet(14) = alphabet(14) + 1;
        elseif word(i) == 'o'
            alphabet(15) = alphabet(15) + 1;
        elseif word(i) == 'p'
            alphabet(16) = alphabet(16) + 1;
        elseif word(i) == 'q'
            alphabet(17) = alphabet(17) + 1;
        elseif word(i) == 'r'
            alphabet(18) = alphabet(18) + 1;
        elseif word(i) == 's'
            alphabet(19) = alphabet(19) + 1;
        elseif word(i) == 't'
            alphabet(20) = alphabet(20) + 1;
        elseif word(i) == 'u'
            alphabet(21) = alphabet(21) + 1;
        elseif word(i) == 'v'
            alphabet(22) = alphabet(22) + 1;
        elseif word(i) == 'w'
            alphabet(23) = alphabet(23) + 1;
        elseif word(i) == 'x'
            alphabet(24) = alphabet(24) + 1;
        elseif word(i) == 'y'
            alphabet(25) = alphabet(25) + 1;
        elseif word(i) == 'z'
            alphabet(26) = alphabet(26) + 1;
        end
    end
end

for i = 1:26
    fprintf("%d\n", alphabet(i));
end