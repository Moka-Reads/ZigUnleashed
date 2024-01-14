#include <stdio.h>
#include <stdlib.h>
#include <png.h>

void get_image_info(const char *filename, int *width, int *height, int *color_type, int *bit_depth) {
    FILE *fp = fopen(filename, "rb");
    if (!fp) {
        fprintf(stderr, "Error: Couldn't open %s for reading\n", filename);
        abort();
    }

    png_byte header[8];
    fread(header, 1, 8, fp);
    if (png_sig_cmp(header, 0, 8)) {
        fprintf(stderr, "Error: %s is not a valid PNG file\n", filename);
        fclose(fp);
        abort();
    }

    png_structp png = png_create_read_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
    if (!png) {
        fprintf(stderr, "Error: Couldn't create read struct\n");
        fclose(fp);
        abort();
    }

    png_infop info = png_create_info_struct(png);
    if (!info) {
        fprintf(stderr, "Error: Couldn't create info struct\n");
        png_destroy_read_struct(&png, NULL, NULL);
        fclose(fp);
        abort();
    }

    if (setjmp(png_jmpbuf(png))) {
        fprintf(stderr, "Error: An error occurred during PNG file reading\n");
        png_destroy_read_struct(&png, &info, NULL);
        fclose(fp);
        abort();
    }

    png_init_io(png, fp);
    png_set_sig_bytes(png, 8);
    png_read_info(png, info);

    *width = png_get_image_width(png, info);
    *height = png_get_image_height(png, info);
    *color_type = png_get_color_type(png, info);
    *bit_depth = png_get_bit_depth(png, info);

    png_destroy_read_struct(&png, &info, NULL);
    fclose(fp);
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <input_png_file>\n", argv[0]);
        return 1;
    }

    const char *input_filename = argv[1];

    int width, height, color_type, bit_depth;

    // Get information about the input image
    get_image_info(input_filename, &width, &height, &color_type, &bit_depth);

    // Print the obtained information
    printf("Width: %d, Height: %d, Color Type: %d, Bit Depth: %d\n", width, height, color_type, bit_depth);

    return 0;
}
