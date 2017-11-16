Red [
	Title:   "Discord.Red Main File"
	Author:  "computerfreaker"
	File: 	 %discord.red
	Rights:  "Copyright (C) 2017 computerfreaker. All rights reserved."
	License: {
		Distributed under the Boost Software License, Version 1.0.
		See https://github.com/CFTheMaster/discord.red/blob/master/LICENSE
	}
]
#include %./src/Client/Client.red ; introduce content from Client.red
#include %./src/Core/Core.red ; introduce content from Core.red
#include %./src/ErrorHandler/Errors.red ; introduce content from Errors.red
#include %./src/Sharding/Shard.red ; introduce content from Shard.red
#include %./src/WebSockets/WebSocket.red ; introduce content from WebSocket.red

Client ; From Client.red
Core ; From Core.red
Errors ; From Errors.red
Shard ; From Shard.red
WebSocket ; From WebSocket.red