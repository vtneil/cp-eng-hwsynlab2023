FILL = '100'
VOID = '000'

diameter = int(input().strip())

radius = diameter / 2 - .5
r = (radius + .25)**2 + 1

result = ''

for i in range(diameter):
    y = (i - radius)**2
    for j in range(diameter):
        x = (j - radius)**2
        if x + y <= r:
            result = result + FILL
        else:
            result = result + VOID
    result = result + '\n'

print(result)

result = result.split('\n')[:-1]
pixels_per_line = [x.count('*') for x in result]

print(f'The pixels per line are {pixels_per_line}.')

input()