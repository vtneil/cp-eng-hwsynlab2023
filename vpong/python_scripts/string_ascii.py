def string_to_padded_hex(s):
    # Convert the string to hexadecimal values
    hex_str = ''.join(f'{ord(c):02X}' for c in s)

    # Pad the hexadecimal string to make it 16 characters wide (32 hex digits)
    padded_hex_str = hex_str.ljust(32, '0')

    # Format the string with underscores
    formatted_hex_str = '_'.join(padded_hex_str[i:i+2] for i in range(0, len(padded_hex_str), 2))

    return formatted_hex_str

# Test the function with the example
if __name__ == '__main__':
    while input_string := input('Enter string: ').strip():
        output = string_to_padded_hex(input_string)
        print(output)
    input('Press ENTER to exit...')
