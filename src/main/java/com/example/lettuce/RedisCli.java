package com.example.lettuce;

import io.lettuce.core.RedisClient;
import io.lettuce.core.api.StatefulRedisConnection;

public class RedisCli {

	public static RedisClient redisClient = RedisClient
			  .create("redis://abc123@localhost:6379/");
	
	public static StatefulRedisConnection<String, String> connection
			 = redisClient.connect();
	
}
