##############################################################################
Tensorflow Quantization
##############################################################################


==============================================================================
Getting Started
==============================================================================

Experiment

::

    $ git clone https://github.com/tensorflow/tensorflow
    $ cd tensorflow

    $ ./scripts/getting_started.sh

Customization

::

    $ git clone https://github.com/tensorflow/tensorflow
    $ cd tensorflow
    $ bazel build tensorflow/tools/graph_transforms:transform_graph

    # dowload models
    $ vim ./scripts/quantize.sh  # update configs
    $ ./scripts/quantize.sh

==============================================================================
References
==============================================================================

- [How to Quantize Neural Networks with Tensorflow](https://www.tensorflow.org/performance/quantization)

