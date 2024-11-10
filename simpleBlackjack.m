function avgScore = simpleBlackjack(limit, trials)

    % possible card values
    cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]; % values 2 to 10

    % variable to keep track of the total score over all trials
    total_over_all_hands = 0;

    % loop
    for t = 1:trials
        handTotal = 0; % start each hand with a total of 0
        
        % draw cards until the hand total meets or exceeds the limit
        while handTotal < limit
            % pick a random card from the cards array
            card = cards(randi(length(cards)));
            handTotal = handTotal + card;
        end
        
        % add the final hand total to the overall total
        total_over_all_hands = total_over_all_hands + handTotal;
    end

    % calculate the average score over all trials
    avgScore = total_over_all_hands / trials;
end


%what to put in command window: avgScore = simpleBlackjack( 15, 1000000 )
