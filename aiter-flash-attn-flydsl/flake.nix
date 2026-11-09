{
  description = "AITER gfx1201 FlyDSL attention and FP8 quantization";

  inputs.kernel-builder.url = "github:huggingface/kernels/32b3dc8cea813b011885fa656121fe8d9c8415ea";

  outputs =
    { self, kernel-builder }:
    kernel-builder.lib.genKernelFlakeOutputs {
      inherit self;
      path = ./.;
    };
}
