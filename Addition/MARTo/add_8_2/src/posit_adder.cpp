#define VIVADO_BACKEND

#include <ap_int.h>
#include "hint.hpp"
#include "posit/posit_dim.hpp"
#include "posit/posit_decoder.hpp"
#include "posit/posit_encoder.hpp"
#include "posit/posit_add.hpp"

constexpr unsigned int N = 8;
constexpr unsigned int WES = 2;
constexpr unsigned int ENC_SIZE = N;

ap_uint<ENC_SIZE> posit_comp_add(
	PositEncoding<N, WES, hint::VivadoWrapper> in1,
	PositEncoding<N, WES, hint::VivadoWrapper> in2
)
{
	auto decoded1 = posit_decoder(in1);
	auto decoded2 = posit_decoder(in2);
	auto add = posit_add(decoded1, decoded2);
	auto final = posit_encoder(add);
	return final.unravel();
}

int main(void)
{
	posit_comp_add({{17}}, {{78}});
	return 0;
}
