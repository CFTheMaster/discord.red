Red [
    Title: "Get WebSocket"
    Author: computerfreaker
    File: %WebSocket.red
]

#include %./API/Gateway/ExtendedGuild.red
#include %./API/Gateway/GatewayOpCode.red
#include %./API/Gateway/GuildBanEvent.red
#include %./API/Gateway/GuildEmojiUpdate.red
#include %./API/Gateway/GuildMemberAddEvent.red
#include %./API/Gateway/GuildMemberRemove.red
#include %./API/Gateway/GuildMemberUpdateEvent.red
#include %./API/Gateway/GuildMembersChunkEvent.red
#include %./API/Gateway/GuildRoleCreateEvent.red
#include %./API/Gateway/GuildRoleDeleteEvent.red
#include %./API/Gateway/GuildRoleUpdateEvent.red
#include %./API/Gateway/GuildSyncEvent.red
#include %./API/Gateway/HelloEvent.red
#include %./API/Gateway/IdentifyParams.red
#include %./API/Gateway/MessageDeleteBulkEvent.red
#include %./API/Gateway/Reaction.red
#include %./API/Gateway/ReadyEvent.red
#include %./API/Gateway/RecipientEvent.red
#include %./API/Gateway/RemoveAllREactionsEvent.red
#include %./API/Gateway/RequestMembersParams.red
#include %./API/Gateway/ResumeParams.red
#include %./API/Gateway/ResumedEvent.red
#include %./API/Gateway/StatusUpdateParam.red
#include %./API/Gateway/TypingStartEvent.red
; #include %./API/Gateway/VoiceServerUpdateEvent.red
; #include %./API/Gateway/VoiceStateUpdateParams.red
WebSocket: func [][ 
    print "File From Websocket"
]
