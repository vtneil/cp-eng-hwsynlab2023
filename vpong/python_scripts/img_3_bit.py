from PIL import Image
import numpy as np


def compress_image(image: Image, factor) -> Image:
    # Compressing the image by the factor N
    width, height = image.size
    image: Image = image.resize((width // factor, height // factor))
    return image


def convert_to_argb(image):
    # Convert image to numpy array
    data = np.array(image)

    # Prepare an empty array for the bit strings
    bit_strings = []

    # Process each pixel
    for row in data:
        row_data = []
        for pixel in row:
            red, green, blue, alpha = pixel
            # Convert each channel to 1-bit (0 or 1)
            a_bit = '1' if alpha > 0 else '0'
            r_bit = '1' if red >= 128 else '0'
            g_bit = '1' if green >= 128 else '0'
            b_bit = '1' if blue >= 128 else '0'
            # Combine the bits
            argb = f'{a_bit}{r_bit}{g_bit}{b_bit}'
            row_data.append(argb)
        bit_strings.append(row_data)
    return bit_strings


def process_image(file_path, compression_factor):
    # Load the image
    image = Image.open(file_path).convert('RGBA')
    # Compress the image
    compressed_image = compress_image(image, compression_factor)
    # compressed_image.show()

    # Convert to ARGB format bit strings
    argb_bits = convert_to_argb(compressed_image)
    return argb_bits


# Example usage
file_path = 'pikachu-transparent-hd-1.png'
compression_factor = 2  # Replace with your desired factor
bit_strings = process_image(file_path, compression_factor)

print(f'{len(bit_strings[0])}, {len(bit_strings)}')

for row in bit_strings:
    print('_'.join(row))
