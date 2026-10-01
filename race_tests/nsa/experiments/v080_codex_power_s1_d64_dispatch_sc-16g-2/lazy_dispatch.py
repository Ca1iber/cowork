# First call caches a compiled code object, never attention data.
def _power_install_lazy_s1_code(key):
    def first_call(*tensor_args):
        kernel = _make_power_s1_case4_dense(*key)
        _KERNEL_CACHE[key] = kernel
        return kernel(*tensor_args)
    _KERNEL_CACHE[key] = first_call

for _power_s1_key in ((1, 128, 1, 16, 64, 1, 16, True), (2, 512, 1, 16, 64, 1, 16, True), (4, 1024, 1, 16, 64, 1, 16, True), (1, 4096, 1, 16, 64, 1, 16, True), (2, 4096, 1, 16, 64, 1, 16, True), (1, 8192, 1, 16, 64, 1, 16, True), (1, 256, 2, 32, 64, 1, 16, True), (2, 512, 2, 32, 64, 1, 16, True)):
    _power_install_lazy_s1_code(_power_s1_key)
