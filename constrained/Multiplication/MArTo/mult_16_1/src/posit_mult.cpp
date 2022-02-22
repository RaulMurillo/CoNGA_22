#define VIVADO_BACKEND

#include <ap_int.h>
#include "hint.hpp"
#include "posit/posit_dim.hpp"
#include "posit/posit_decoder.hpp"
#include "posit/posit_encoder.hpp"
#include "posit/posit_mul.hpp"
#include "posit/value_prod_conversions.hpp"

constexpr unsigned int N = 16;
constexpr unsigned int WES = 1;
constexpr unsigned int ENC_SIZE = N;

ap_uint<ENC_SIZE> posit_comp_mul(
	PositEncoding<N, WES, hint::VivadoWrapper> in1,
	PositEncoding<N, WES, hint::VivadoWrapper> in2
)
{
#pragma HLS LATENCY max=0
	auto decoded1 = posit_decoder(in1);
	auto decoded2 = posit_decoder(in2);
	auto mul = posit_mul(decoded1, decoded2);
	auto final = posit_encoder(PositProd_to_PositIF(mul));
	return final.unravel();
}

int main(void)
{
	posit_comp_mul({{17}}, {{78}});
	return 0;
}
