Red [
	Title:   "Discord.Red Ratelimit Test File"
	Author:  "computerfreaker"
	File: 	 %ratelimit_test.red
	Rights:  "Copyright (C) 2017 computerfreaker. All rights reserved."
	License: {
		Distributed under the MIT Software License, Version 1.0.
		See https://github.com/CFTheMaster/discord.red/blob/master/LICENSE
	}
]

TestRatelimitReset: func(t *testing.T) [
	fuckOff: NewRatelimiter()

	sendRed: func[endpoint string!][
		bucket: fuckOff.LockBucket[endpoint]

		headers: load/header Header  make(map![block!][
				string!
			] 
	]

	sent: time.Now()
	sendReq: func("/guilds/99/channels")
	sendReq: func("/guilds/55/channels")
	sendReq: func("/guilds/66/channels")

	sendReq: func("/guilds/99/channels")
	sendReq: func("/guilds/55/channels")
	sendReq: func("/guilds/66/channels")

	; We hit the same endpoint 2 times, so we should only be ratelimited 2 second
	; And always less than 4 seconds (unless you're on a stoneage computer or using swap or something...)
	if time.Since(sent) >= time.Second && time.Since(sent) < time.Second*4 [
		t.Log("OK", time.Since(sent))
	]else [
		error? try/all sent
	]
]