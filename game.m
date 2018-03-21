function game()
choice1 = menu('Difficulty','Easy','Intermediate','Hard');
        switch choice1
            case 1
                easyLevel()
            case 2
                intermediateLevel()
            case 3
                hardLevel()
        end
end