export SGLANG_TORCH_PROFILER_DIR=/root
# python -m sglang.launch_server --model /A/nvme4n1p1/DeepSeek-R1-0528 --cuda-graph-max-bs=8 --tp 8  --chunked-prefill-size=131072 --num-continuous-decode-steps=4 --max-prefill-tokens=131072 --kv-cache-dtype fp8_e4m3 --attention-backend aiter --disable-radix-cache --mem-fraction-static=0.8 --load-format dummy
#




### for vscode debug
ZZD=1 python -m sglang.launch_server --model /A/nvme4n1p1/DeepSeek-R1-0528 --cuda-graph-max-bs=8 --tp 8  --chunked-prefill-size=131072 --num-continuous-decode-steps=4 --max-prefill-tokens=131072 --kv-cache-dtype fp8_e4m3 --attention-backend aiter --disable-radix-cache --mem-fraction-static=0.1 --load-format dummy




# --dp 8 --enable-dp-attention