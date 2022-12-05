#include"Basic.hlsli"

VSOutput main(float4 pos:POSITION, float3 normal : NORMAL, float2 uv : TEXCOORD) {
	VSOutput output; //ピクセルシェーダーに渡す値
	//output.svpos = pos;
	output.svpos = mul(mat, pos);	//座標に行列を乗算
	output.uv = uv;
	output.normal = normal;
	return output;
}

//float4 main(float4 pos : POSITION) : SV_POSITION
//{
//	return pos;
//}