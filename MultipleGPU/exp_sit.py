from __future__ import print_function
import tensorflow as tf
import argparse
import time
FLAGS = None

def main():
	with tf.device('/gpu:0'):
		a = tf.constant(1.,shape=[2],dtype=tf.float32)
		b = tf.constant(2,shape=[2],dtype=tf.float32)
		c=a+b
	gpu_options = tf.GPUOptions(allow_growth=True,allocator_type="BFC",visible_device_list="%d"%FLAGS.gpu_id)
	config = tf.ConfigProto(gpu_options=gpu_options,allow_soft_placement=True,device_count={'GPU':1},log_device_placement=True)
	with tf.Session(config=config) as sess:
		r = sess.run(c)
		print(r)
		time.sleep(FLAGS.sleep)

if __name__ == '__main__':
	parser = argparse.ArgumentParser()
	parser.add_argument(
		"--gpu_id",
		type=int,
		default=0,
		help="ID of GPU to allocate'"
	)
	parser.add_argument(
      "--sleep",
      type=int,
      default=10,
      help="seconds to stall the GPU'"
    )

	FLAGS, unparsed = parser.parse_known_args()
	main()
