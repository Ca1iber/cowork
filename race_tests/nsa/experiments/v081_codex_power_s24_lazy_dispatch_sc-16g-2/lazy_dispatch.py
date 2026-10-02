
def _power_install_lazy_code(key, factory):
    def first_call(*tensor_args):
        kernel = factory(*key)
        _KERNEL_CACHE[key] = kernel
        return kernel(*tensor_args)
    _KERNEL_CACHE[key] = first_call

for _power_key, _power_factory in (
    ((1, 128, 1, 16, 64, 1, 16, True), _make_power_s1_case4_dense),
    ((2, 512, 1, 16, 64, 1, 16, True), _make_power_s1_case4_dense),
    ((4, 1024, 1, 16, 64, 1, 16, True), _make_power_s1_case4_dense),
    ((8, 1024, 1, 16, 128, 1, 32, True), _make_power_s1_v_hybrid_pack),
    ((1, 4096, 1, 16, 64, 1, 16, True), _make_power_s1_case4_dense),
    ((2, 4096, 1, 16, 64, 1, 16, True), _make_power_s1_case4_dense),
    ((1, 8192, 1, 16, 64, 1, 16, True), _make_power_s1_case4_dense),
    ((1, 256, 1, 16, 64, 2, 16, True), _make_power_s8_output_pair),
    ((2, 512, 1, 16, 64, 4, 16, True), _make_power_s8_output_pair),
    ((4, 1024, 1, 16, 64, 8, 16, True), _make_power_s8_output_pair),
    ((1, 256, 2, 32, 64, 1, 16, True), _make_power_s1_case4_dense),
    ((2, 512, 2, 32, 64, 1, 16, True), _make_power_s1_case4_dense),
):
    _power_install_lazy_code(_power_key, _power_factory)
