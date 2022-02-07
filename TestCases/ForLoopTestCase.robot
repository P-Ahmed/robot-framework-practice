*** Test Cases ***
ForLoop1
    FOR    ${i}    IN RANGE    1   10
        log to console    ${i}
    END

ForLoop2
    FOR    ${i}     IN    1    2    3    4    5    6    7    8
        log to console    ${i}
    END
ForLoop3
    ${items}    create list    1    2   3   4   5
    FOR    ${i}    IN    ${items}
        log to console    ${i}
    END
ForLoop4
    ${name}    create list    Ahmed    Siam    Saymon    Rakib
    FOR    ${i}    IN    ${name}
        log to console    ${i}
    END
ForLoop5
    FOR    ${i}    IN    Ahmed    Siam    Saymon    Rakib
        log to console    ${i}
    END
ForLoop6
    ${item}    create list    1    2    3    4    5
    FOR    ${i}    IN    ${item}
        log to console    ${i}
        exit for loop if    ${i}==3
    END