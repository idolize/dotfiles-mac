function listening
    if test (count $argv) = 0
        lsof -iTCP -sTCP:LISTEN -n -P
    else if test (count $argv) = 1
        lsof -iTCP -sTCP:LISTEN -n -P | grep -i $argv[1]
    else
        echo "Usage: listening [pattern]"
    end
end
