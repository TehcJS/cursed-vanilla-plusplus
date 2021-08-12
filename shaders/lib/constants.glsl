// Includes
#include "/config/settings.glsl"

// Constants
#ifdef OLD_BLOOM
#define KERNEL_SIZE 21
#else
#define KERNEL_SIZE 24
#endif // OLD_BLOOM

const float weights[] = float[]
(
	#ifdef OLD_BLOOM
	0.041555,
	0.041348, 0.040733, 0.039728, 0.038363, 0.036676,
	0.034715, 0.032532, 0.030183, 0.027726, 0.025215,
	0.022704, 0.020239, 0.017863, 0.015609, 0.013504,
	0.011566, 0.009808, 0.008235, 0.006845, 0.005633,

	0.005633, 0.006845, 0.008235, 0.009808, 0.011566,
	0.013504, 0.015609, 0.017863, 0.020239, 0.022704,
	0.036676, 0.038363, 0.039728, 0.040733, 0.041348,
	0.041555
	#else
	// Sigma 16
0.039688, 0.039921, 0.039999, 0.039921, 0.039688,
0.039921, 0.040156, 0.040235, 0.040156, 0.039921,
0.039999, 0.040235, 0.040313, 0.040235, 0.039999,
0.039921, 0.040156, 0.040235, 0.040156, 0.039921,
0.039688, 0.039921, 0.039999, 0.039921, 0.039688
	// Sigma 5
// 0.036894, 0.039167, 0.039956, 0.039167, 0.036894,
// 0.039167, 0.041581, 0.042418, 0.041581, 0.039167,
// 0.039956, 0.042418, 0.043272, 0.042418, 0.039956,
// 0.039167, 0.041581, 0.042418, 0.041581, 0.039167,
// 0.036894, 0.039167, 0.039956, 0.039167, 0.03689
	// Sigma 3
// 0.031827, 0.037541, 0.039665, 0.037541, 0.031827,
// 0.037541, 0.044281, 0.046787, 0.044281, 0.037541,
// 0.039665, 0.046787, 0.049434, 0.046787, 0.039665,
// 0.037541, 0.044281, 0.046787, 0.044281, 0.037541,
// 0.031827, 0.037541, 0.039665, 0.037541, 0.031827
	// Sigma 1
// 0.003765, 0.015019, 0.023792, 0.015019, 0.003765,
// 0.015019, 0.059912, 0.094907, 0.059912, 0.015019,
// 0.023792, 0.094907, 0.150342, 0.094907, 0.023792,
// 0.015019, 0.059912, 0.094907, 0.059912, 0.015019,
// 0.003765, 0.015019, 0.023792, 0.015019, 0.003765
	#endif // OLD_BLOOM
);
