from __future__ import print_function
import tensorflow as tf
import argparse
import time
FLAGS = None

def main():
	# Graph
	with tf.device('/cpu:0'):
		a = tf.Variable(tf.truncated_normal(shape=[2]),dtype=tf.float32)
		b = tf.Variable(tf.truncated_normal(shape=[2]),dtype=tf.float32)
		c=a+b

		target = tf.constant(100.,shape=[2],dtype=tf.float32)
		loss = tf.reduce_mean(tf.square(c-target))
	
		opt = tf.train.GradientDescentOptimizer(.0001).minimize(loss)

	# Session
	#sv = tf.train.Supervisor(logdir='/tmp/mydir')
	sv = tf.train.Supervisor(logdir='/tmp/mydir')
	gpu_options = tf.GPUOptions(allow_growth=True,allocator_type="BFC",visible_device_list="%d"%FLAGS.gpu_id)
	config = tf.ConfigProto(gpu_options=gpu_options,allow_soft_placement=False,device_count={'GPU':1},log_device_placement=True)
	sess = sv.prepare_or_wait_for_session(config=config)
	for i in range(1000):
		sess.run(opt)
		if i % 10 == 0:
			r = sess.run(c)
			print(r)
		time.sleep(.1)

if __name__ == '__main__':
	parser = argparse.ArgumentParser()
	parser.add_argument(
		"--gpu_id",
		type=int,
		default=0,
		help="ID of GPU to allocate'"
	)

	FLAGS, unparsed = parser.parse_known_args()
	main()
