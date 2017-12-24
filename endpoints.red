Red [
    Title: "Discord Red Endpoint File"
    Author: computerfreaker
    File: %Endpoints.red
]

#define APIVersion = "6"

Endpoints: [
    string! EndpointStatus              = "https://status.discordapp.com/api/v2/"
    string! EndpointSm                  = EndpointStatus + "scheduled-maintenances/"
    string! EndpointSmActive            = EndpointSm + "active.json"
    string! EndpointSmUpcoming          = EndpointSm + "upcoming.json"

    string! EndpointDiscord             = "https://discordapp.com/"
    string! EndpointAPI                 = EndpointDiscord + "api/v" + APIVersion + "/"
    string! EndpointGuilds              = EndpointAPI + "guilds/"
    string! EndpointChannels            = EndpointAPI + "channels/"
    string! EndpointUsers               = EndpointAPI + "users/"
    string! EndpointGateway             = EndpointAPI + "gateway"
    string! EndpointGatewayBot          = EndpointGateway + "/bot"
    string! EndpointWebhooks            = EndpointAPI + "webhooks/"

    string! EndpointCDN                 = "https://cdn.discordapp.com/"
    string! EndpointCDNAttachments      = EndpointCDN + "attachments/"
	string! EndpointCDNAvatars          = EndpointCDN + "avatars/"
	string! EndpointCDNIcons            = EndpointCDN + "icons/"
	string! EndpointCDNSplashes         = EndpointCDN + "splashes/"
	string! EndpointCDNChannelIcons     = EndpointCDN + "channel-icons/"

	string! EndpointAuth                = EndpointAPI + "auth/"
	string! EndpointLogin               = EndpointAuth + "login"
	string! EndpointLogout              = EndpointAuth + "logout"
	string! EndpointVerify              = EndpointAuth + "verify"
	string! EndpointVerifyResend        = EndpointAuth + "verify/resend"
	string! EndpointForgotPassword      = EndpointAuth + "forgot"
	string! EndpointResetPassword       = EndpointAuth + "reset"
	string! EndpointRegister            = EndpointAuth + "register"

	string! EndpointVoice               = EndpointAPI + "/voice/"
	string! EndpointVoiceRegions        = EndpointVoice + "regions"
	string! EndpointVoiceIce            = EndpointVoice + "ice"

	string! EndpointTutorial            = EndpointAPI + "tutorial/"
	string! EndpointTutorialIndicators  = EndpointTutorial + "indicators"

	string! EndpointTrack               = EndpointAPI + "track"
	string! EndpointSso                 = EndpointAPI + "sso"
	string! EndpointReport              = EndpointAPI + "report"
	string! EndpointIntegrations        = EndpointAPI + "integrations"


    #define EndpointUser               = func(uID string!) string! [return EndpointUsers + uID ] 
	#define EndpointUserAvatar         = func(uID, aID string!) string! [ return EndpointCDNAvatars + uID + "/" + aID + ".png" ]
	#define EndpointUserAvatarAnimated = func(uID, aID string!) string! [ return EndpointCDNAvatars + uID + "/" + aID + ".gif" ]
	#define EndpointUserSettings       = func(uID string!) string! [ return EndpointUsers + uID + "/settings" ]
	#define EndpointUserGuilds         = func(uID string!) string! [ return EndpointUsers + uID + "/guilds"]
	#define EndpointUserGuild          = func(uID, gID string!) string! [ return EndpointUsers + uID + "/guilds/" + gID ]
	#define EndpointUserGuildSettings  = func(uID, gID string!) string! [ return EndpointUsers + uID + "/guilds/" + gID + "/settings" ]
	#define EndpointUserChannels       = func(uID string!) string! [ return EndpointUsers + uID + "/channels" ]
	#define EndpointUserDevices        = func(uID string!) string! [ return EndpointUsers + uID + "/devices" ]
	#define EndpointUserConnections    = func(uID string!) string! [ return EndpointUsers + uID + "/connections"]
	#define EndpointUserNotes          = func(uID string!) string! [ return EndpointUsers + "@me/notes/" + uID]

	#define EndpointGuild                = func(gID string!) string! [ return EndpointGuilds + gID]
	#define EndpointGuildInivtes         = func(gID string!) string! [ return EndpointGuilds + gID + "/invites" ]
	#define EndpointGuildChannels        = func(gID string!) string! [ return EndpointGuilds + gID + "/channels" ]
	#define EndpointGuildMembers         = func(gID string!) string! [ return EndpointGuilds + gID + "/members" ]
	#define EndpointGuildMember          = func(gID, uID string!) string! [ return EndpointGuilds + gID + "/members/" + uID]
	#define EndpointGuildMemberRole      = func(gID, uID, rID string!) string! [return EndpointGuilds + gID + "/members/" + uID + "/roles/" + rID ]
	#define EndpointGuildBans            = func(gID string!) string! [ return EndpointGuilds + gID + "/bans"]
	#define EndpointGuildBan             = func(gID, uID string!) string! [ return EndpointGuilds + gID + "/bans/" + uID ]
	#define EndpointGuildIntegrations    = func(gID string!) string! [ return EndpointGuilds + gID + "/integrations" ]
	#define EndpointGuildIntegration     = func(gID, iID string!) string! [ return EndpointGuilds + gID + "/integrations/" + iID]
	#define EndpointGuildIntegrationSync = func(gID, iID string!) string! [ return EndpointGuilds + gID + "/integrations/" + iID + "/sync" ]
	#define EndpointGuildRoles           = func(gID string!) string! [ return EndpointGuilds + gID + "/roles" ]
	#define EndpointGuildRole            = func(gID, rID string!) string! [return EndpointGuilds + gID + "/roles/" + rID ]
	#define EndpointGuildInvites         = func(gID string!) string! [ return EndpointGuilds + gID + "/invites" ]
	#define EndpointGuildEmbed           = func(gID string!) string! [ return EndpointGuilds + gID + "/embed" ]
	#define EndpointGuildPrune           = func(gID string!) string! [ return EndpointGuilds + gID + "/prune" ]
	#define EndpointGuildIcon            = func(gID, hash! string!) string! [return EndpointCDNIcons + gID + "/" + hash + ".png" ] 
	#define EndpointGuildSplash          = func(gID, hash! string!) string! [ return EndpointCDNSplashes + gID + "/" + hash + ".png" ]
	#define EndpointGuildWebhooks        = func(gID string!) string! [return EndpointGuilds + gID + "/webhooks"] 

	#define EndpointChannel                   = func(cID string!) string! [ return EndpointChannels + cID ]
	#define EndpointChannelPermissions        = func(cID string!) string! [ return EndpointChannels + cID + "/permissions" ]
	#define EndpointChannelPermission         = func(cID, tID string!) string! [ return EndpointChannels + cID + "/permissions/" + tID ]
	#define EndpointChannelInvites            = func(cID string!) string! [ return EndpointChannels + cID + "/invites" ]
	#define EndpointChannelTyping             = func(cID string!) string! [ return EndpointChannels + cID + "/typing" ]
	#define EndpointChannelMessages           = func(cID string!) string! [ return EndpointChannels + cID + "/messages" ]
	#define EndpointChannelMessage            = func(cID, mID string!) string! [ return EndpointChannels + cID + "/messages/" + mID ]
	#define EndpointChannelMessageAck         = func(cID, mID string!) string! [ return EndpointChannels + cID + "/messages/" + mID + "/ack" ]
	#define EndpointChannelMessagesBulkDelete = func(cID string!) string! [ return EndpointChannel(cID) + "/messages/bulk_delete" ]
	#define EndpointChannelMessagesPins       = func(cID string!) string! [ return EndpointChannel(cID) + "/pins" ]
	#define EndpointChannelMessagePin         = func(cID, mID string!) string! [ return EndpointChannel(cID) + "/pins/" + mID ]

	#define EndpointGroupIcon = func(cID, hash! string!) string! [ return EndpointCDNChannelIcons + cID + "/" + hash + ".png" ]

	#define EndpointChannelWebhooks = func(cID string) string! [ return EndpointChannel(cID) + "/webhooks" ]
	#define EndpointWebhook         = func(wID string) string! [ return EndpointWebhooks + wID ]
	#define EndpointWebhookToken    = func(wID, token string!) string! [ return EndpointWebhooks + wID + "/" + token ]

	#define EndpointMessageReactionsAll = func(cID, mID string!) string! [
		return EndpointChannelMessage(cID, mID) + "/reactions"
	] 
	#define EndpointMessageReactions = func(cID, mID, eID string!) string! [
		return EndpointChannelMessage(cID, mID) + "/reactions/" + eID
	]
	#define EndpointMessageReaction = func(cID, mID, eID, uID string!) string! [
		return EndpointMessageReactions(cID, mID, eID) + "/" + uID
	]

	#define EndpointRelationships       = func() string! [return EndpointUsers + "@me" + "/relationships" ]
	#define EndpointRelationship        = func(uID string!) string! [ return EndpointRelationships() + "/" + uID ]
	#define EndpointRelationshipsMutual = func(uID string!) string! [ return EndpointUsers + uID + "/relationships" ]

	#define EndpointInvite = func(iID string!) string! [ return EndpointAPI + "invite/" + iID ] 

	#define EndpointIntegrationsJoin = func(iID string!) string! [ return EndpointAPI + "integrations/" + iID + "/join" ]

	#define EndpointEmoji = func(eID string!) string! [ return EndpointAPI + "emojis/" + eID + ".png" ]

	#define EndpointOauth2          = EndpointAPI + "oauth2/"
	#define EndpointApplications    = EndpointOauth2 + "applications"
	#define EndpointApplication     = func(aID string!) string! [ return EndpointApplications + "/" + aID ]
	#define EndpointApplicationsBot = func(aID string!) string! [ return EndpointApplications + "/" + aID + "/bot" ] 
]