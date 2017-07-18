from __future__ import print_function
import tensorflow as tf
import argparse
import time
FLAGS = None

def main():
	with tf.device('/gpu:%d'%FLAGS.gpu_id):
		a = tf.constant(1.,shape=[2],dtype=tf.float32)
		b = tf.constant(2,shape=[2],dtype=tf.float32)
		c=a+b

	config = tf.ConfigProto(allow_soft_placement=False)
	config.gpu_options.allow_growth = True
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