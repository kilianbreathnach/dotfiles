# Start urxvt daemon
urxvtd -q -f -o

# Spawn a terminal
urxvtc &

exec	i3
exec autocutsel -s PRIMARY
