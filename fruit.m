function fruit(N)
 
    for i = 1:N
        if rem(i, 2) == 0 && rem(i, 5) == 0
            fprintf('applebanana\n'); % divisible by both 2 and 5
        elseif rem(i, 2) == 0
            fprintf('apple\n'); % divisible by 2 only
        elseif rem(i, 5) == 0
            fprintf('banana\n'); % divisible by 5 only
        else
            fprintf('%d\n', i); % not divisible by 2 or 5
        end
    end
end

%what to put in command window = fruit(12)
