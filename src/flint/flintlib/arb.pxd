from flint._flint cimport ulong, slong, flint_rand_t
from flint.flintlib.fmpz cimport fmpz_t
from flint.flintlib.fmpq cimport fmpq_t
from flint.flintlib.arf cimport arf_struct, arf_ptr, arf_t
from flint.flintlib.mag cimport mag_struct, mag_ptr, mag_t

cdef extern from "arb.h":
    ctypedef struct arb_struct:
        arf_struct mid
        mag_struct rad

    ctypedef arb_struct * arb_ptr
    ctypedef const arb_struct * arb_srcptr
    ctypedef arb_struct arb_t[1]

    arf_ptr arb_midref(const arb_t x)
    mag_ptr arb_radref(const arb_t x)

    void arb_init(arb_t x)
    void arb_clear(arb_t x)

    void arb_init(arb_t x)
    void arb_clear(arb_t x)
    int arb_is_exact(const arb_t x)
    int arb_equal(const arb_t x, const arb_t y)
    int arb_eq(const arb_t x, const arb_t y)
    int arb_ne(const arb_t x, const arb_t y)
    int arb_lt(const arb_t x, const arb_t y)
    int arb_le(const arb_t x, const arb_t y)
    int arb_gt(const arb_t x, const arb_t y)
    int arb_ge(const arb_t x, const arb_t y)
    void arb_zero(arb_t x)
    int arb_is_zero(const arb_t x)
    void arb_pos_inf(arb_t x)
    void arb_neg_inf(arb_t x)
    void arb_zero_pm_inf(arb_t x)
    void arb_indeterminate(arb_t x)
    int arb_is_finite(const arb_t x)
    void arb_set(arb_t x, const arb_t y)
    void arb_swap(arb_t x, arb_t y)
    void arb_set_round(arb_t z, const arb_t x, long prec)
    void arb_trim(arb_t y, const arb_t x)
    void arb_neg(arb_t x, const arb_t y)
    void arb_neg_round(arb_t x, const arb_t y, long prec)
    void arb_abs(arb_t x, const arb_t y)
    void arb_sgn(arb_t x, const arb_t y)
    void arb_set_arf(arb_t x, const arf_t y)
    void arb_set_si(arb_t x, long y)
    void arb_set_ui(arb_t x, ulong y)
    void arb_set_fmpz(arb_t x, const fmpz_t y)
    void arb_set_fmpz_2exp(arb_t x, const fmpz_t y, const fmpz_t exp)
    void arb_set_round_fmpz_2exp(arb_t y, const fmpz_t x, const fmpz_t exp, long prec)
    void arb_set_round_fmpz(arb_t y, const fmpz_t x, long prec)
    int arb_is_one(const arb_t f)
    void arb_one(arb_t f)
    void arb_print(const arb_t x)
    void arb_printd(const arb_t x, long digits)
    void arb_mul_2exp_si(arb_t y, const arb_t x, long e)
    void arb_mul_2exp_fmpz(arb_t y, const arb_t x, const fmpz_t e)
    int arb_is_int(const arb_t x)
    int arb_contains_zero(const arb_t x)
    int arb_is_nonzero(const arb_t x)
    int arb_is_positive(const arb_t x)
    int arb_is_nonnegative(const arb_t x)
    int arb_is_negative(const arb_t x)
    int arb_is_nonpositive(const arb_t x)
    int arb_contains_negative(const arb_t x)
    int arb_contains_nonpositive(const arb_t x)
    int arb_contains_positive(const arb_t x)
    int arb_contains_nonnegative(const arb_t x)
    int arb_contains_int(const arb_t x)
    void arb_get_mag_lower(mag_t z, const arb_t x)
    void arb_get_mag_lower_nonnegative(mag_t z, const arb_t x)
    void arb_get_mag(mag_t z, const arb_t x)
    void arb_get_abs_ubound_arf(arf_t u, const arb_t x, long prec)
    void arb_get_abs_lbound_arf(arf_t u, const arb_t x, long prec)
    void arb_get_ubound_arf(arf_t u, const arb_t z, long prec)
    void arb_get_lbound_arf(arf_t u, const arb_t z, long prec)
    void arb_nonnegative_part(arb_t u, const arb_t x)
    slong arb_rel_error_bits(const arb_t x)
    slong arb_rel_accuracy_bits(const arb_t x)
    long arb_bits(const arb_t x)
    void arb_randtest_exact(arb_t x, flint_rand_t state, long prec, long mag_bits)
    void arb_randtest_wide(arb_t x, flint_rand_t state, long prec, long mag_bits)
    void arb_randtest_precise(arb_t x, flint_rand_t state, long prec, long mag_bits)
    void arb_randtest(arb_t x, flint_rand_t state, long prec, long mag_bits)
    void arb_randtest_special(arb_t x, flint_rand_t state, long prec, long mag_bits)
    void arb_add_error_arf(arb_t x, const arf_t err)
    void arb_add_error_2exp_si(arb_t x, long err)
    void arb_add_error_2exp_fmpz(arb_t x, const fmpz_t err)
    void arb_add_error(arb_t x, const arb_t error)
    void arb_add_error_mag(arb_t x, const mag_t err)
    int arb_contains_arf(const arb_t x, const arf_t y)
    int arb_contains_fmpq(const arb_t x, const fmpq_t y)
    int arb_contains_fmpz(const arb_t x, const fmpz_t y)
    int arb_contains_si(const arb_t x, long y)
    int arb_overlaps(const arb_t x, const arb_t y)
    int arb_contains(const arb_t x, const arb_t y)
    int arb_contains_interior(const arb_t x, const arb_t y)
    void arb_get_interval_fmpz_2exp(fmpz_t a, fmpz_t b, fmpz_t exp, const arb_t x)
    int arb_get_unique_fmpz(fmpz_t z, const arb_t x)
    void arb_get_fmpz_mid_rad_10exp(fmpz_t mid, fmpz_t rad, fmpz_t exp, const arb_t x, long n)

    int arb_set_str(arb_t res, const char * inp, long prec)

    void arb_floor(arb_t z, const arb_t x, long prec)
    void arb_ceil(arb_t z, const arb_t x, long prec)
    void arb_set_interval_arf(arb_t x, const arf_t a, const arf_t b, long prec)
    void arb_get_interval_arf(arf_t a, arf_t b, const arb_t x, long prec)
    void arb_union(arb_t z, const arb_t x, const arb_t y, long prec)
    int arb_intersection(arb_t z, const arb_t x, const arb_t y, long prec)
    void arb_min(arb_t z, const arb_t x, const arb_t y, long prec)
    void arb_max(arb_t z, const arb_t x, const arb_t y, long prec)

    void arb_get_rand_fmpq(fmpq_t q, flint_rand_t state, const arb_t x, long bits)

    void arb_add(arb_t z, const arb_t x, const arb_t y, long prec)
    void arb_add_arf(arb_t z, const arb_t x, const arf_t y, long prec)
    void arb_add_ui(arb_t z, const arb_t x, ulong y, long prec)
    void arb_add_si(arb_t z, const arb_t x, long y, long prec)
    void arb_add_fmpz(arb_t z, const arb_t x, const fmpz_t y, long prec)
    void arb_add_fmpz_2exp(arb_t z, const arb_t x, const fmpz_t man, const fmpz_t exp, long prec)

    void arb_sub(arb_t z, const arb_t x, const arb_t y, long prec)
    void arb_sub_arf(arb_t z, const arb_t x, const arf_t y, long prec)
    void arb_sub_ui(arb_t z, const arb_t x, ulong y, long prec)
    void arb_sub_si(arb_t z, const arb_t x, long y, long prec)
    void arb_sub_fmpz(arb_t z, const arb_t x, const fmpz_t y, long prec)

    void arb_mul(arb_t z, const arb_t x, const arb_t y, long prec)
    void arb_mul_arf(arb_t z, const arb_t x, const arf_t y, long prec)
    void arb_mul_si(arb_t z, const arb_t x, long y, long prec)
    void arb_mul_ui(arb_t z, const arb_t x, ulong y, long prec)
    void arb_mul_fmpz(arb_t z, const arb_t x, const fmpz_t y, long prec)

    void arb_addmul(arb_t z, const arb_t x, const arb_t y, long prec)
    void arb_addmul_arf(arb_t z, const arb_t x, const arf_t y, long prec)
    void arb_addmul_si(arb_t z, const arb_t x, long y, long prec)
    void arb_addmul_ui(arb_t z, const arb_t x, ulong y, long prec)
    void arb_addmul_fmpz(arb_t z, const arb_t x, const fmpz_t y, long prec)

    void arb_submul(arb_t z, const arb_t x, const arb_t y, long prec)
    void arb_submul_arf(arb_t z, const arb_t x, const arf_t y, long prec)
    void arb_submul_si(arb_t z, const arb_t x, long y, long prec)
    void arb_submul_ui(arb_t z, const arb_t x, ulong y, long prec)
    void arb_submul_fmpz(arb_t z, const arb_t x, const fmpz_t y, long prec)

    void arb_div(arb_t z, const arb_t x, const arb_t y, long prec)
    void arb_div_arf(arb_t z, const arb_t x, const arf_t y, long prec)
    void arb_div_si(arb_t z, const arb_t x, long y, long prec)
    void arb_div_ui(arb_t z, const arb_t x, ulong y, long prec)
    void arb_div_fmpz(arb_t z, const arb_t x, const fmpz_t y, long prec)
    void arb_fmpz_div_fmpz(arb_t z, const fmpz_t x, const fmpz_t y, long prec)
    void arb_ui_div(arb_t z, ulong x, const arb_t y, long prec)

    void arb_inv(arb_t y, const arb_t x, long prec)
    void arb_set_fmpq(arb_t y, const fmpq_t x, long prec)

    void arb_sqrt(arb_t z, const arb_t x, long prec)
    void arb_sqrt_arf(arb_t z, const arf_t x, long prec)
    void arb_sqrt_fmpz(arb_t z, const fmpz_t x, long prec)
    void arb_sqrt_ui(arb_t z, ulong x, long prec)

    void arb_sqrtpos(arb_t z, const arb_t x, long prec)
    void arb_hypot(arb_t z, const arb_t x, const arb_t y, long prec)

    void arb_rsqrt(arb_t z, const arb_t x, long prec)
    void arb_rsqrt_ui(arb_t z, ulong x, long prec)

    void arb_pow_fmpz_binexp(arb_t y, const arb_t b, const fmpz_t e, long prec)
    void arb_pow_fmpz(arb_t y, const arb_t b, const fmpz_t e, long prec)
    void arb_pow_ui(arb_t y, const arb_t b, ulong e, long prec)
    void arb_ui_pow_ui(arb_t y, ulong b, ulong e, long prec)
    void arb_si_pow_ui(arb_t y, long b, ulong e, long prec)
    void arb_pow_fmpq(arb_t y, const arb_t x, const fmpq_t a, long prec)

    void arb_div_2expm1_ui(arb_t z, const arb_t x, ulong n, long prec)
    void arb_pow(arb_t z, const arb_t x, const arb_t y, long prec)
    void arb_root(arb_t z, const arb_t x, ulong k, long prec)
    void arb_log(arb_t z, const arb_t x, long prec)
    void arb_log_arf(arb_t z, const arf_t x, long prec)
    void arb_log_ui(arb_t z, ulong x, long prec)
    void arb_log_fmpz(arb_t z, const fmpz_t x, long prec)
    void arb_log1p(arb_t z, const arb_t x, long prec)
    void arb_exp(arb_t z, const arb_t x, long prec)
    void arb_expm1(arb_t z, const arb_t x, long prec)
    void arb_sin(arb_t s, const arb_t x, long prec)
    void arb_cos(arb_t c, const arb_t x, long prec)
    void arb_sin_cos(arb_t s, arb_t c, const arb_t x, long prec)
    void arb_sin_pi(arb_t s, const arb_t x, long prec)
    void arb_cos_pi(arb_t c, const arb_t x, long prec)
    void arb_sin_cos_pi(arb_t s, arb_t c, const arb_t x, long prec)
    void arb_tan(arb_t y, const arb_t x, long prec)
    void arb_cot(arb_t y, const arb_t x, long prec)
    void arb_sec(arb_t y, const arb_t x, long prec)
    void arb_csc(arb_t y, const arb_t x, long prec)
    void arb_tan_pi(arb_t y, const arb_t x, long prec)
    void arb_cot_pi(arb_t y, const arb_t x, long prec)
    void arb_sin_cos_pi_fmpq(arb_t s, arb_t c, const fmpq_t x, long prec)
    void arb_sin_pi_fmpq(arb_t s, const fmpq_t x, long prec)
    void arb_cos_pi_fmpq(arb_t c, const fmpq_t x, long prec)
    void arb_sinc(arb_t s, const arb_t x, long prec)
    void arb_sinc_pi(arb_t s, const arb_t x, long prec)
    void arb_sinh(arb_t z, const arb_t x, long prec)
    void arb_cosh(arb_t z, const arb_t x, long prec)
    void arb_sinh_cosh(arb_t s, arb_t c, const arb_t x, long prec)
    void arb_tanh(arb_t y, const arb_t x, long prec)
    void arb_coth(arb_t y, const arb_t x, long prec)
    void arb_sech(arb_t y, const arb_t x, long prec)
    void arb_csch(arb_t y, const arb_t x, long prec)
    void arb_atan_arf(arb_t z, const arf_t x, long prec)
    void arb_atan(arb_t z, const arb_t x, long prec)
    void arb_atan2(arb_t z, const arb_t b, const arb_t a, long prec)
    void arb_asin(arb_t z, const arb_t x, long prec)
    void arb_acos(arb_t z, const arb_t x, long prec)
    void arb_atanh(arb_t z, const arb_t x, long prec)
    void arb_asinh(arb_t z, const arb_t x, long prec)
    void arb_acosh(arb_t z, const arb_t x, long prec)
    void arb_fac_ui(arb_t z, ulong n, long prec)
    void arb_bin_ui(arb_t z, const arb_t n, ulong k, long prec)
    void arb_bin_uiui(arb_t z, ulong n, ulong k, long prec)
    void arb_fib_fmpz(arb_t z, const fmpz_t n, long prec)
    void arb_fib_ui(arb_t z, ulong n, long prec)
    void arb_const_pi(arb_t z, long prec)
    void arb_const_sqrt_pi(arb_t z, long prec)
    void arb_const_log_sqrt2pi(arb_t z, long prec)
    void arb_const_log2(arb_t z, long prec)
    void arb_const_log10(arb_t z, long prec)
    void arb_const_euler(arb_t z, long prec)
    void arb_const_catalan(arb_t z, long prec)
    void arb_const_e(arb_t z, long prec)
    void arb_const_khinchin(arb_t z, long prec)
    void arb_const_glaisher(arb_t z, long prec)
    void arb_agm(arb_t z, const arb_t x, const arb_t y, long prec)
    void arb_lgamma(arb_t z, const arb_t x, long prec)
    void arb_rgamma(arb_t z, const arb_t x, long prec)
    void arb_gamma(arb_t z, const arb_t x, long prec)
    void arb_gamma_fmpq(arb_t z, const fmpq_t x, long prec)
    void arb_gamma_fmpz(arb_t z, const fmpz_t x, long prec)
    void arb_digamma(arb_t y, const arb_t x, long prec)
    void arb_zeta(arb_t z, const arb_t s, long prec)
    void arb_zeta_ui(arb_t z, ulong n, long prec)
    void arb_bernoulli_ui(arb_t z, ulong n, long prec)
    void arb_bernoulli_fmpz(arb_t z, const fmpz_t n, long prec)
    void arb_bernoulli_poly_ui(arb_t z, ulong n, const arb_t x, long prec)
    void arb_hurwitz_zeta(arb_t z, const arb_t s, const arb_t a, long prec)

    void arb_bell_fmpz(arb_t z, const fmpz_t n, long prec)

    void arb_partitions_fmpz(arb_t z, const fmpz_t n, long prec)
    void arb_partitions_ui(arb_t z, ulong n, long prec)

    void arb_lambertw(arb_t z, const arb_t x, int flags, long prec)


    void arb_rising_ui_bs(arb_t y, const arb_t x, ulong n, long prec)
    void arb_rising_ui_rs(arb_t y, const arb_t x, ulong n, ulong m, long prec)
    void arb_rising_ui_rec(arb_t y, const arb_t x, ulong n, long prec)
    void arb_rising_ui(arb_t z, const arb_t x, ulong n, long prec)
    void arb_rising_fmpq_ui(arb_t y, const fmpq_t x, ulong n, long prec)
    void arb_rising(arb_t y, const arb_t x, const arb_t n, long prec)

    void arb_rising2_ui_rs(arb_t u, arb_t v, const arb_t x, ulong n, ulong m, long prec)
    void arb_rising2_ui_bs(arb_t u, arb_t v, const arb_t x, ulong n, long prec)
    void arb_rising2_ui(arb_t u, arb_t v, const arb_t x, ulong n, long prec)

    void arb_log_ui_from_prev(arb_t s, ulong k, arb_t log_prev, ulong prev, long prec)

    void arb_const_apery(arb_t s, long prec)

    void arb_zeta_ui_asymp(arb_t x, ulong s, long prec)
    void arb_zeta_ui_borwein_bsplit(arb_t x, ulong s, long prec)
    void arb_zeta_ui_euler_product(arb_t z, ulong s, long prec)
    void arb_zeta_ui_bernoulli(arb_t x, ulong n, long prec)
    void arb_zeta_ui_vec_borwein(arb_ptr z, ulong start, long num, ulong step, long prec)
    void arb_zeta_ui(arb_t x, ulong n, long prec)
    void arb_zeta_ui_vec_even(arb_ptr x, ulong start, long num, long prec)
    void arb_zeta_ui_vec_odd(arb_ptr x, ulong start, long num, long prec)
    void arb_zeta_ui_vec(arb_ptr x, ulong start, long num, long prec)
    void arb_bernoulli_ui(arb_t b, ulong n, long prec)
    void arb_bernoulli_ui_zeta(arb_t b, ulong n, long prec)

    void arb_polylog(arb_t w, const arb_t s, const arb_t z, long prec)
    void arb_polylog_si(arb_t w, long s, const arb_t z, long prec)

    void arb_chebyshev_t_ui(arb_t a, ulong n, const arb_t x, long prec)
    void arb_chebyshev_t2_ui(arb_t a, arb_t b, ulong n, const arb_t x, long prec)
    void arb_chebyshev_u_ui(arb_t a, ulong n, const arb_t x, long prec)
    void arb_chebyshev_u2_ui(arb_t a, arb_t b, ulong n, const arb_t x, long prec)

    void arb_root_ui(arb_t z, const arb_t x, ulong k, long prec)

    cdef ulong ARB_STR_MORE
    cdef ulong ARB_STR_NO_RADIUS
    cdef ulong ARB_STR_CONDENSE
    char * arb_get_str(const arb_t x, long n, ulong flags)
