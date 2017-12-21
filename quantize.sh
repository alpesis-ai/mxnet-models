MODEL_DIR=tensorflow/examples/label_image/data/inception_v3_2016_08_28_frozen.pb
MODEL_QUANTIZED_DIR=/tmp/quantized_graph.pb
INPUT=input
OUTPUT=InceptionV3/Predictions/Reshape_1
TRANSFORMS='add_default_attributes strip_unused_nodes(type=float, shape="1,299,299,3")
    remove_nodes(op=Identity, op=CheckNumerics) fold_constants(ignore_errors=true)
    fold_batch_norms fold_old_batch_norms quantize_weights quantize_nodes
    strip_unused_nodes sort_by_execution_order'

bazel-bin/tensorflow/tools/graph_transforms/transform_graph \
  --in_graph=$(MODEL_DIR) \
  --out_graph=$(MODEL_QUANTIZED_DIR) \
  --inputs=$(INPUT) \
  --outputs=$(OUTPUT) \
  --transforms=$(TRANSFORMS)
