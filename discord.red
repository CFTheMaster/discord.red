Red [
	Title:   "Discord.Red Main File"
	Author:  "computerfreaker"
	File: 	 %main.red
	Rights:  "Copyright (C) 2017 computerfreaker. All rights reserved."
	License: {
		Distributed under the Boost Software License, Version 1.0.
		See https://github.com/CFTheMaster/discord.red/blob/master/LICENSE
	}
]
#include %./src/WebSockets/WebSocket.red ; introduce content from WebSocket.red
#include %./src/CommandHandler/BasicCommand.red ; introduce content from WebSocket.red
#include %./src/Core/Core.red ; introduce content from WebSocket.red
WebSocket ; From WebSocket.red
BasicCommand ; From BasicCommand.red
Core ; Core File