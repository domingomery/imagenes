def gaussiankernel(size):
    """
    This method creates a symmetric Gaussian kernel.

    :param size: inf number to specify the size of the kernel.
            Typical numbers 3, 5, 9, 11.
    """

    sigma = size/8.5 #  width of the Gaussian distribution

    x, y = np.mgrid[-size // 2 + 1:size // 2 + 1,
           -size // 2 + 1:size // 2 + 1]

    kernel = np.exp(-((x ** 2 + y ** 2) / (2.0 * sigma ** 2)))
    kernel = kernel / kernel.sum()

    return kernel.astype('double')