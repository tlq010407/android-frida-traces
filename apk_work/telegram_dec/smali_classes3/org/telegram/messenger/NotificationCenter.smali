.class public Lorg/telegram/messenger/NotificationCenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;,
        Lorg/telegram/messenger/NotificationCenter$DelayedPost;,
        Lorg/telegram/messenger/NotificationCenter$PostponeNotificationCallback;,
        Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;,
        Lorg/telegram/messenger/NotificationCenter$UniqArrayList;
    }
.end annotation


# static fields
.field private static final EXPIRE_NOTIFICATIONS_TIME:J = 0x1399L

.field private static volatile Instance:[Lorg/telegram/messenger/NotificationCenter; = null

.field public static final activeGroupCallsUpdated:I = 0xa6

.field public static final activityPermissionsGranted:I = 0x12a

.field public static final adminedChannelsLoaded:I = 0xe6

.field public static final albumsDidLoad:I = 0x9e

.field public static alreadyLogged:Z = false

.field public static final animatedEmojiDocumentLoaded:I = 0x71

.field public static final appConfigUpdated:I = 0xe9

.field public static final appDidLogout:I = 0xac

.field public static final appUpdateAvailable:I = 0x112

.field public static final appUpdateLoading:I = 0x113

.field public static final applyGroupCallVisibleParticipants:I = 0xa7

.field public static final archivedStickersCountDidLoad:I = 0x55

.field public static final articleClosed:I = 0x59

.field public static final attachMenuBotsDidLoad:I = 0x118

.field public static final audioDidSent:I = 0x9f

.field public static final audioRecordTooShort:I = 0xa0

.field public static final audioRouteChanged:I = 0xa1

.field public static final availableEffectsUpdate:I = 0xd2

.field public static final billingConfirmPurchaseError:I = 0x125

.field public static final billingProductDetailsUpdated:I = 0x124

.field public static final blockedUsersDidLoad:I = 0x29

.field public static final bookmarkAdded:I = 0x78

.field public static final boostByChannelCreated:I = 0xb9

.field public static final boostedChannelByUser:I = 0xb8

.field public static final botDownloadsUpdate:I = 0xe3

.field public static final botInfoDidLoad:I = 0x40

.field public static final botKeyboardDidLoad:I = 0x43

.field public static final botStarsTransactionsLoaded:I = 0xdb

.field public static final botStarsUpdated:I = 0xda

.field public static final businessLinkCreated:I = 0x7b

.field public static final businessLinksUpdated:I = 0x7a

.field public static final businessMessagesUpdated:I = 0x75

.field public static final cameraInitied:I = 0xf3

.field public static final changeRepliesCounter:I = 0xb

.field public static final channelConnectedBotsUpdate:I = 0xe5

.field public static final channelRecommendationsLoaded:I = 0xc3

.field public static final channelRightsUpdated:I = 0x57

.field public static final channelStarsUpdated:I = 0xdc

.field public static final channelSuggestedBotsUpdate:I = 0xe4

.field public static final chatAvailableReactionsUpdated:I = 0x119

.field public static final chatDidCreated:I = 0x1a

.field public static final chatDidFailCreate:I = 0x1b

.field public static final chatInfoCantLoad:I = 0x1d

.field public static final chatInfoDidLoad:I = 0x1c

.field public static final chatOnlineCountDidLoad:I = 0x5c

.field public static final chatSearchResultsAvailable:I = 0x44

.field public static final chatSearchResultsLoading:I = 0x46

.field public static final chatSwitchedForum:I = 0x12c

.field public static final chatWasBoostedByUser:I = 0xcd

.field public static final chatlistFolderUpdate:I = 0x133

.field public static final closeChats:I = 0x4

.field public static final closeInCallActivity:I = 0xaa

.field public static final closeOtherAppActivities:I = 0xf2

.field public static final closeSearchByActiveAction:I = 0x10a

.field public static final commentsRead:I = 0xa

.field public static final commonChatsLoaded:I = 0xe8

.field public static final conferenceEmojiUpdated:I = 0xea

.field public static final configLoaded:I = 0xad

.field public static final contactsDidLoad:I = 0x17

.field public static final contactsImported:I = 0x18

.field public static final currentUserPremiumStatusChanged:I = 0x120

.field public static final currentUserShowLimitReachedDialog:I = 0x123

.field public static final customStickerCreated:I = 0xd0

.field public static final customTypefacesLoaded:I = 0x136

.field public static final dialogDeleted:I = 0x6e

.field public static final dialogFiltersUpdated:I = 0xb2

.field public static final dialogIsTranslatable:I = 0x7f

.field public static final dialogPhotosLoaded:I = 0x24

.field public static final dialogPhotosUpdate:I = 0xc2

.field public static final dialogTranslate:I = 0x80

.field public static final dialogsNeedReload:I = 0x3

.field public static final dialogsUnreadCounterChanged:I = 0x90

.field public static final dialogsUnreadReactionsCounterChanged:I = 0x11a

.field public static final diceStickersDidLoad:I = 0x3b

.field public static final didApplyNewTheme:I = 0xf7

.field public static final didClearDatabase:I = 0x10d

.field public static final didCreatedNewDeleteTask:I = 0x2b

.field public static final didEndCall:I = 0xa9

.field public static final didGenerateFingerprintKeyPair:I = 0x81

.field public static final didLoadChatAdmins:I = 0x6a

.field public static final didLoadChatInviter:I = 0x69

.field public static final didLoadPinnedMessages:I = 0x36

.field public static final didLoadSendAsPeers:I = 0xe

.field public static final didLoadSponsoredMessages:I = 0xd

.field public static final didReceiveCall:I = 0xef

.field public static final didReceiveNewMessages:I = 0x1

.field public static final didReceiveSmsCode:I = 0xee

.field public static final didReceivedWebpages:I = 0x38

.field public static final didReceivedWebpagesInUpdates:I = 0x39

.field public static final didRemoveTwoStepPassword:I = 0x34

.field public static final didReplacedPhotoInMemCache:I = 0xf4

.field public static final didSetNewTheme:I = 0xf5

.field public static final didSetNewWallpapper:I = 0x101

.field public static final didSetOrRemoveTwoStepPassword:I = 0x33

.field public static final didSetPasscode:I = 0x30

.field public static final didStartedCall:I = 0xa2

.field public static final didStartedMultiGiftsSelector:I = 0xb7

.field public static final didUpdateConnectionState:I = 0x86

.field public static final didUpdateExtendedMedia:I = 0x65

.field public static final didUpdateGlobalAutoDeleteTimer:I = 0x12d

.field public static final didUpdateMessagesViews:I = 0x4b

.field public static final didUpdatePollResults:I = 0x5b

.field public static final didUpdatePremiumGiftFieldIcon:I = 0xbc

.field public static final didUpdatePremiumGiftStickers:I = 0xba

.field public static final didUpdateReactions:I = 0x64

.field public static final didUpdateTonGiftStickers:I = 0xbb

.field public static final didVerifyMessagesStickers:I = 0x66

.field public static final emojiKeywordsLoaded:I = 0xc8

.field public static final emojiLoaded:I = 0xf0

.field public static final emojiPreviewThemesChanged:I = 0x116

.field public static final encryptedChatCreated:I = 0x23

.field public static final encryptedChatUpdated:I = 0x21

.field public static final factCheckLoaded:I = 0xd9

.field public static final featuredEmojiDidLoad:I = 0x3d

.field public static final featuredStickersDidLoad:I = 0x3c

.field public static final fileLoadFailed:I = 0x8c

.field public static final fileLoadProgressChanged:I = 0x8a

.field public static final fileLoaded:I = 0x8b

.field public static final fileNewChunkAvailable:I = 0x8e

.field public static final filePreparingFailed:I = 0x8f

.field public static final filePreparingStarted:I = 0x8d

.field public static final fileUploadFailed:I = 0x88

.field public static final fileUploadProgressChanged:I = 0x89

.field public static final fileUploaded:I = 0x87

.field public static final filterSettingsUpdated:I = 0xb3

.field public static final folderBecomeEmpty:I = 0x26

.field public static final forceImportContactsStart:I = 0x16

.field public static final giftsToUserSent:I = 0xb6

.field private static volatile globalInstance:Lorg/telegram/messenger/NotificationCenter; = null

.field public static final goingToPreviewTheme:I = 0xfc

.field public static final groupCallScreencastStateChanged:I = 0xa5

.field public static final groupCallSpeakingUsersUpdated:I = 0xa4

.field public static final groupCallTypingsUpdated:I = 0xa8

.field public static final groupCallUpdated:I = 0xa3

.field public static final groupCallVisibilityChanged:I = 0xab

.field public static final groupPackUpdated:I = 0xce

.field public static final groupRestrictionsUnlockedByBoosts:I = 0xcc

.field public static final groupStickersDidLoad:I = 0x3e

.field public static final hasNewContactsToImport:I = 0x19

.field public static final hashtagSearchUpdated:I = 0x45

.field public static final historyCleared:I = 0x6

.field public static final historyImportProgressChanged:I = 0x6b

.field public static final httpFileDidFailedLoad:I = 0x85

.field public static final httpFileDidLoad:I = 0x84

.field public static final invalidateMotionBackground:I = 0xf1

.field public static final liveLocationsCacheChanged:I = 0x107

.field public static final liveLocationsChanged:I = 0x105

.field public static final loadingMessagesFailed:I = 0x11

.field public static final locationPermissionDenied:I = 0xfe

.field public static final locationPermissionGranted:I = 0xfd

.field public static final mainUserInfoChanged:I = 0x2c

.field public static final mediaCountDidLoad:I = 0x1f

.field public static final mediaCountsDidLoad:I = 0x20

.field public static final mediaDidLoad:I = 0x1e

.field public static final messagePlayingDidReset:I = 0x92

.field public static final messagePlayingDidSeek:I = 0x95

.field public static final messagePlayingDidStart:I = 0x94

.field public static final messagePlayingGoingToStop:I = 0x96

.field public static final messagePlayingPlayStateChanged:I = 0x93

.field public static final messagePlayingProgressDidChanged:I = 0x91

.field public static final messagePlayingSpeedChanged:I = 0x10b

.field public static final messageReceivedByAck:I = 0x12

.field public static final messageReceivedByServer:I = 0x13

.field public static final messageReceivedByServer2:I = 0x14

.field public static final messageSendError:I = 0x15

.field public static final messageTranslated:I = 0x7d

.field public static final messageTranslating:I = 0x7e

.field public static final messagesDeleted:I = 0x5

.field public static final messagesDidLoad:I = 0xc

.field public static final messagesDidLoadWithoutProcess:I = 0x10

.field public static final messagesFeeUpdated:I = 0xe7

.field public static final messagesRead:I = 0x7

.field public static final messagesReadContent:I = 0x3f

.field public static final messagesReadEncrypted:I = 0x22

.field public static final monoForumMessagesRead:I = 0x9

.field public static final moreMusicDidLoad:I = 0x48

.field public static final musicDidLoad:I = 0x47

.field public static final nearEarEvent:I = 0x13a

.field public static final needAddArchivedStickers:I = 0x54

.field public static final needCheckSystemBarColors:I = 0xf9

.field public static final needDeleteBusinessLink:I = 0x7c

.field public static final needDeleteDialog:I = 0xae

.field public static final needReloadRecentDialogsSearch:I = 0x4c

.field public static final needSetDayNightTheme:I = 0xfb

.field public static final needShareTheme:I = 0xfa

.field public static final needShowAlert:I = 0x49

.field public static final needShowPlayServicesAlert:I = 0x4a

.field public static final newDraftReceived:I = 0x52

.field public static final newEmojiSuggestionsAvailable:I = 0xaf

.field public static final newLocationAvailable:I = 0x106

.field public static final newPeopleNearbyAvailable:I = 0x5e

.field public static final newSessionReceived:I = 0x37

.field public static final newSuggestionsAvailable:I = 0x68

.field public static final notificationsCountUpdated:I = 0x108

.field public static final notificationsSettingsUpdated:I = 0x28

.field public static final onActivityResultReceived:I = 0x11d

.field public static final onDatabaseMigration:I = 0x114

.field public static final onDatabaseOpened:I = 0x11b

.field public static final onDatabaseReset:I = 0x12e

.field public static final onDownloadingFilesChanged:I = 0x11c

.field public static final onEmojiInteractionsReceived:I = 0x115

.field public static final onReceivedChannelDifference:I = 0x138

.field public static final onRequestPermissionResultReceived:I = 0x11e

.field public static final onUserRingtonesUpdated:I = 0x11f

.field public static final openArticle:I = 0x58

.field public static final openBoostForUsersDialog:I = 0xcb

.field public static final openedChatChanged:I = 0x2a

.field public static final passcodeDismissed:I = 0x31

.field public static final paymentFinished:I = 0x56

.field public static final peerSettingsDidLoad:I = 0x4d

.field public static final permissionsGranted:I = 0x129

.field public static final pinnedInfoDidLoad:I = 0x42

.field public static final playerDidStartPlaying:I = 0x109

.field public static final premiumFloodWaitReceived:I = 0xd1

.field public static final premiumPromoUpdated:I = 0x121

.field public static final premiumStatusChangedGlobal:I = 0x122

.field public static final premiumStickersPreviewLoaded:I = 0x126

.field public static final privacyRulesUpdated:I = 0x2d

.field public static final proxyChangedByRotation:I = 0x104

.field public static final proxyCheckDone:I = 0x103

.field public static final proxySettingsChanged:I = 0x102

.field public static final pushMessagesUpdated:I = 0xeb

.field public static final quickRepliesDeleted:I = 0x77

.field public static final quickRepliesUpdated:I = 0x76

.field public static final reactionsDidLoad:I = 0x117

.field public static final recentDocumentsDidLoad:I = 0x53

.field public static final recentEmojiStatusesUpdate:I = 0x72

.field public static final recordPaused:I = 0x9b

.field public static final recordProgressChanged:I = 0x97

.field public static final recordResumed:I = 0x9c

.field public static final recordStartError:I = 0x99

.field public static final recordStarted:I = 0x98

.field public static final recordStopped:I = 0x9a

.field public static final reloadDialogPhotos:I = 0x25

.field public static final reloadHints:I = 0x4f

.field public static final reloadInlineHints:I = 0x50

.field public static final reloadInterface:I = 0xff

.field public static final reloadWebappsHints:I = 0x51

.field public static final removeAllMessagesFromDialog:I = 0x27

.field public static final replaceMessagesObjects:I = 0x2f

.field public static final replyMessagesDidLoad:I = 0x35

.field public static final requestPermissions:I = 0x128

.field public static final savedMessagesDialogsUpdate:I = 0xc4

.field public static final savedMessagesForwarded:I = 0xc7

.field public static final savedReactionTagsUpdate:I = 0xc5

.field public static final scheduledMessagesUpdated:I = 0x67

.field public static final screenStateChanged:I = 0x10c

.field public static final screenshotTook:I = 0x9d

.field public static final sendingMessagesChanged:I = 0x63

.field public static final showBulletin:I = 0x111

.field public static final smsJobStatusUpdate:I = 0xc9

.field public static final starBalanceUpdated:I = 0xd6

.field public static final starGiftOptionsLoaded:I = 0xd4

.field public static final starGiftSoldOut:I = 0xe1

.field public static final starGiftsLoaded:I = 0xdf

.field public static final starGiveawayOptionsLoaded:I = 0xd5

.field public static final starOptionsLoaded:I = 0xd3

.field public static final starReactionAnonymousUpdate:I = 0x79

.field public static final starSubscriptionsLoaded:I = 0xd8

.field public static final starTransactionsLoaded:I = 0xd7

.field public static final starUserGiftsLoaded:I = 0xe0

.field public static final startAllHeavyOperations:I = 0x60

.field public static final startSpoilers:I = 0x62

.field public static final stealthModeChanged:I = 0x137

.field public static final stickersDidLoad:I = 0x3a

.field public static final stickersImportComplete:I = 0x6d

.field public static final stickersImportProgressChanged:I = 0x6c

.field public static final stopAllHeavyOperations:I = 0x5f

.field public static final stopSpoilers:I = 0x61

.field public static final storiesBlocklistUpdate:I = 0xbe

.field public static final storiesDraftsUpdated:I = 0x132

.field public static final storiesEnabledUpdate:I = 0xbd

.field public static final storiesLimitUpdate:I = 0xbf

.field public static final storiesListUpdated:I = 0x131

.field public static final storiesReadUpdated:I = 0x139

.field public static final storiesSendAsUpdate:I = 0xc0

.field public static final storiesUpdated:I = 0x130

.field public static final storyQualityUpdate:I = 0xca

.field public static final suggestedFiltersLoaded:I = 0xb4

.field public static final suggestedLangpack:I = 0x100

.field public static final themeAccentListUpdated:I = 0xf8

.field public static final themeListUpdated:I = 0xf6

.field public static final themeUploadError:I = 0xb1

.field public static final themeUploadedToServer:I = 0xb0

.field public static final threadMessagesRead:I = 0x8

.field public static final timezonesUpdated:I = 0xcf

.field public static final topicsDidLoaded:I = 0x12b

.field private static totalEvents:I = 0x13d

.field public static final translationModelDownloaded:I = 0x13c

.field public static final translationModelDownloading:I = 0x13b

.field public static final twoStepPasswordChanged:I = 0x32

.field public static final unconfirmedAuthUpdate:I = 0xc1

.field public static final updateAllMessages:I = 0xde

.field public static final updateBotMenuButton:I = 0xb5

.field public static final updateDefaultSendAsPeer:I = 0xf

.field public static final updateInterfaces:I = 0x2

.field public static final updateMentionsCount:I = 0x5a

.field public static final updateMessageMedia:I = 0x2e

.field public static final updateSearchSettings:I = 0x73

.field public static final updateStories:I = 0xe2

.field public static final updateTranscriptionLock:I = 0x74

.field public static final uploadStoryEnd:I = 0x135

.field public static final uploadStoryProgress:I = 0x134

.field public static final userEmojiStatusUpdated:I = 0x127

.field public static final userInfoDidLoad:I = 0x41

.field public static final userIsPremiumBlockedUpadted:I = 0xc6

.field public static final videoLoadingStateChanged:I = 0x5d

.field public static final voiceTranscriptionUpdate:I = 0x70

.field public static final voipServiceCreated:I = 0x10e

.field public static final walletPendingTransactionsChanged:I = 0x82

.field public static final walletSyncProgressChanged:I = 0x83

.field public static final wallpaperSettedToUser:I = 0x12f

.field public static final wallpapersDidLoad:I = 0xec

.field public static final wallpapersNeedReload:I = 0xed

.field public static final wasUnableToFindCurrentLocation:I = 0x4e

.field public static final webRtcMicAmplitudeEvent:I = 0x10f

.field public static final webRtcSpeakerAmplitudeEvent:I = 0x110

.field public static final webViewResolved:I = 0xdd

.field public static final webViewResultSent:I = 0x6f


# instance fields
.field private final addAfterBroadcast:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final allowedNotifications:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;",
            ">;"
        }
    .end annotation
.end field

.field alreadyPostedRunnubles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private animationInProgressCount:I

.field private animationInProgressPointer:I

.field private broadcasting:I

.field private checkForExpiredNotifications:Ljava/lang/Runnable;

.field private currentAccount:I

.field private currentHeavyOperationFlags:I

.field private final delayedPosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$DelayedPost;",
            ">;"
        }
    .end annotation
.end field

.field private final delayedPostsTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$DelayedPost;",
            ">;"
        }
    .end annotation
.end field

.field private final delayedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final delayedRunnablesTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field heavyOperationsCounter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final postponeCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$PostponeNotificationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final removeAfterBroadcast:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1rHFyh05Sw716Jb4uZbOJEGUXWA()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->lambda$listenGlobal$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$2qzL3zEseGiFtXS-W9CAoCK37eI(Lorg/telegram/messenger/NotificationCenter;I[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->lambda$postNotificationNameOnUIThread$1(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9dQim8d25IPx2oXhlGL0-yS9ITQ(Lorg/telegram/messenger/NotificationCenter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications()V

    return-void
.end method

.method public static synthetic $r8$lambda$CBCfHInG5YaHMj0Rw5FrED2DT0g()V
    .locals 0

    .line 0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->lambda$listen$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Lbniv7vBMadOyWsYsv7bbQzFcNE(ILorg/telegram/messenger/Utilities$Callback;II[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->lambda$listenGlobal$4(ILorg/telegram/messenger/Utilities$Callback;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N33TWtVfjYeM5ka4oNG7jySnpIQ(Lorg/telegram/messenger/NotificationCenter;I[Ljava/lang/Object;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->lambda$postNotificationDebounced$2(I[Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gs1-TjHPBQnDs7vrfCMWFXUH0Aw(Landroid/view/View;Landroid/view/View$OnAttachStateChangeListener;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->lambda$listenGlobal$5(Landroid/view/View;Landroid/view/View$OnAttachStateChangeListener;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hvSq7Ort85f6OygQlBSUg8NTwCo(Lorg/telegram/messenger/NotificationCenter;I[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Ljava/lang/Runnable;II[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/NotificationCenter;->lambda$listenOnce$10(I[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Ljava/lang/Runnable;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jEixdy8bpDodL1rWiArvMiXf9u0(ILorg/telegram/messenger/Utilities$Callback;II[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->lambda$listen$7(ILorg/telegram/messenger/Utilities$Callback;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kRGq3M5EgoAg5221229yJMyB5e0(Lorg/telegram/messenger/NotificationCenter;Landroid/view/View;Landroid/view/View$OnAttachStateChangeListener;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->lambda$listen$8(Landroid/view/View;Landroid/view/View$OnAttachStateChangeListener;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rjjOb3EwFrCuVgFj9ST-YS4-xdM(Lorg/telegram/messenger/NotificationCenter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/NotificationCenter;->lambda$checkForExpiredNotifications$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$tvRCgs13qrNpFOxdWaMIMSj4r24(Landroid/view/View;[Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/NotificationCenter;->lambda$listenEmojiLoading$9(Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/telegram/messenger/NotificationCenter;

    sput-object v0, Lorg/telegram/messenger/NotificationCenter;->Instance:[Lorg/telegram/messenger/NotificationCenter;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnables:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnablesTmp:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPostsTmp:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressPointer:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->heavyOperationsCounter:Ljava/util/HashSet;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->alreadyPostedRunnubles:Landroid/util/SparseArray;

    iput p1, p0, Lorg/telegram/messenger/NotificationCenter;->currentAccount:I

    return-void
.end method

.method private checkForExpiredNotifications()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    iget-object v2, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-wide v8, v5

    const/4 v7, 0x0

    :goto_0
    iget-object v10, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v7, v10, :cond_3

    iget-object v10, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;

    iget-wide v10, v10, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;->time:J

    sub-long v12, v2, v10

    const-wide/16 v14, 0x3e8

    cmp-long v16, v12, v14

    if-lez v16, :cond_2

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iget-object v10, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    cmp-long v1, v8, v5

    if-eqz v1, :cond_5

    sub-long/2addr v2, v8

    const-wide/16 v4, 0x1399

    sub-long/2addr v4, v2

    new-instance v1, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/NotificationCenter;)V

    const-wide/16 v2, 0x11

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_5
    return-void
.end method

.method private createArrayForId(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;",
            ">;"
        }
    .end annotation

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    if-eq p1, v0, :cond_1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    if-eq p1, v0, :cond_1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/messenger/NotificationCenter$UniqArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter$UniqArrayList;-><init>(Lorg/telegram/messenger/NotificationCenter;Lorg/telegram/messenger/NotificationCenter$1;)V

    return-object p1
.end method

.method public static getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;
    .locals 3

    sget-object v0, Lorg/telegram/messenger/NotificationCenter;->globalInstance:Lorg/telegram/messenger/NotificationCenter;

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/messenger/NotificationCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationCenter;->globalInstance:Lorg/telegram/messenger/NotificationCenter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/NotificationCenter;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Lorg/telegram/messenger/NotificationCenter;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/NotificationCenter;->globalInstance:Lorg/telegram/messenger/NotificationCenter;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static getInstance(I)Lorg/telegram/messenger/NotificationCenter;
    .locals 3

    sget-object v0, Lorg/telegram/messenger/NotificationCenter;->Instance:[Lorg/telegram/messenger/NotificationCenter;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/messenger/NotificationCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/NotificationCenter;->Instance:[Lorg/telegram/messenger/NotificationCenter;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/NotificationCenter;->Instance:[Lorg/telegram/messenger/NotificationCenter;

    new-instance v2, Lorg/telegram/messenger/NotificationCenter;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/NotificationCenter;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method

.method private synthetic lambda$checkForExpiredNotifications$0()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/NotificationCenter;)V

    iput-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    return-void
.end method

.method private static synthetic lambda$listen$6()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$listen$7(ILorg/telegram/messenger/Utilities$Callback;II[Ljava/lang/Object;)V
    .locals 0

    if-ne p2, p0, :cond_0

    invoke-interface {p1, p4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$listen$8(Landroid/view/View;Landroid/view/View$OnAttachStateChangeListener;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private static synthetic lambda$listenEmojiLoading$9(Landroid/view/View;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$listenGlobal$3()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$listenGlobal$4(ILorg/telegram/messenger/Utilities$Callback;II[Ljava/lang/Object;)V
    .locals 0

    if-ne p2, p0, :cond_0

    invoke-interface {p1, p4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$listenGlobal$5(Landroid/view/View;Landroid/view/View$OnAttachStateChangeListener;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private synthetic lambda$listenOnce$10(I[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Ljava/lang/Runnable;II[Ljava/lang/Object;)V
    .locals 0

    if-ne p4, p1, :cond_1

    const/4 p4, 0x0

    aget-object p5, p2, p4

    if-eqz p5, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    aget-object p3, p2, p4

    invoke-virtual {p0, p3, p1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 p1, 0x0

    aput-object p1, p2, p4

    :cond_1
    return-void
.end method

.method private synthetic lambda$postNotificationDebounced$2(I[Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameInternal(IZ[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->alreadyPostedRunnubles:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private synthetic lambda$postNotificationNameOnUIThread$1(I[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static listenEmojiLoading(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    new-instance v2, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda10;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->listenGlobal(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;

    return-void
.end method

.method private postNotificationDebounced(I[Ljava/lang/Object;)V
    .locals 2

    invoke-static {p2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/telegram/messenger/NotificationCenter;->alreadyPostedRunnubles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/NotificationCenter;I[Ljava/lang/Object;I)V

    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->alreadyPostedRunnubles:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-wide/16 p1, 0xfa

    invoke-static {v1, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private shouldDebounce(I[Ljava/lang/Object;)Z
    .locals 0

    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    .locals 3

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "addObserver allowed only from MAIN thread"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/NotificationCenter;->createArrayForId(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz p1, :cond_6

    sget-boolean p1, Lorg/telegram/messenger/NotificationCenter;->alreadyLogged:Z

    if-nez p1, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_6

    const/4 p1, 0x1

    sput-boolean p1, Lorg/telegram/messenger/NotificationCenter;->alreadyLogged:Z

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total observers more than 1000, need check for memory leak. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :cond_6
    return-void
.end method

.method public addPostponeNotificationsCallback(Lorg/telegram/messenger/NotificationCenter$PostponeNotificationCallback;)V
    .locals 2

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "PostponeNotificationsCallback allowed only from MAIN thread"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public doOnIdle(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public getCurrentHeavyOperationFlags()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/NotificationCenter;->currentHeavyOperationFlags:I

    return v0
.end method

.method public getObservers(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public hasObservers(I)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAnimationInProgress()Z
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listen(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "[",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda6;

    invoke-direct {v4, p2, p3}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda6;-><init>(ILorg/telegram/messenger/Utilities$Callback;)V

    new-instance v3, Lorg/telegram/messenger/NotificationCenter$2;

    invoke-direct {v3, p0, v4, p2}, Lorg/telegram/messenger/NotificationCenter$2;-><init>(Lorg/telegram/messenger/NotificationCenter;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance p3, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda7;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/NotificationCenter;Landroid/view/View;Landroid/view/View$OnAttachStateChangeListener;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-object p3

    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda8;-><init>()V

    return-object p1
.end method

.method public listenGlobal(Landroid/view/View;ILorg/telegram/messenger/Utilities$Callback;)Ljava/lang/Runnable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "[",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda1;-><init>(ILorg/telegram/messenger/Utilities$Callback;)V

    new-instance p3, Lorg/telegram/messenger/NotificationCenter$1;

    invoke-direct {p3, p0, v0, p2}, Lorg/telegram/messenger/NotificationCenter$1;-><init>(Lorg/telegram/messenger/NotificationCenter;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v1, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p3, v0, p2}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;Landroid/view/View$OnAttachStateChangeListener;Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-object v1

    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda3;-><init>()V

    return-object p1
.end method

.method public listenOnce(ILjava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    new-instance v1, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, v0, p2}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/NotificationCenter;I[Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    aput-object v1, v0, p2

    invoke-virtual {p0, v1, p1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onAnimationFinish(I)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;

    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressCount:I

    iget-object v1, p0, Lorg/telegram/messenger/NotificationCenter;->heavyOperationsCounter:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/NotificationCenter;->heavyOperationsCounter:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->heavyOperationsCounter:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    iget p1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressCount:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/NotificationCenter;->runDelayedNotifications()V

    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method public varargs postNotificationName(I[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    if-eq v1, v3, :cond_1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    if-eq v1, v3, :cond_1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-eq v1, v3, :cond_1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    if-eq v1, v3, :cond_1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const/4 v6, 0x0

    if-nez v3, :cond_8

    iget-object v7, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_8

    iget-object v3, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    iget-object v11, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v9, v11, :cond_6

    iget-object v11, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;

    iget-wide v12, v11, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;->time:J

    sub-long v12, v7, v12

    const-wide/16 v14, 0x1399

    cmp-long v16, v12, v14

    if-lez v16, :cond_3

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    iget-object v12, v0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v11, v11, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;->allowedIds:[I

    if-eqz v11, :cond_6

    const/4 v12, 0x0

    :goto_3
    array-length v13, v11

    if-ge v12, v13, :cond_5

    aget v13, v11, v12

    if-ne v13, v1, :cond_4

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    if-ne v3, v10, :cond_7

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    move v4, v3

    :goto_5
    sget v3, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    if-ne v1, v3, :cond_9

    aget-object v3, v2, v5

    check-cast v3, Ljava/lang/Integer;

    iget v7, v0, Lorg/telegram/messenger/NotificationCenter;->currentHeavyOperationFlags:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v7

    :goto_6
    iput v3, v0, Lorg/telegram/messenger/NotificationCenter;->currentHeavyOperationFlags:I

    goto :goto_7

    :cond_9
    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    if-ne v1, v3, :cond_a

    aget-object v3, v2, v5

    check-cast v3, Ljava/lang/Integer;

    iget v7, v0, Lorg/telegram/messenger/NotificationCenter;->currentHeavyOperationFlags:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v3, v7

    goto :goto_6

    :cond_a
    :goto_7
    invoke-direct/range {p0 .. p2}, Lorg/telegram/messenger/NotificationCenter;->shouldDebounce(I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v3, :cond_b

    invoke-direct/range {p0 .. p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationDebounced(I[Ljava/lang/Object;)V

    goto :goto_8

    :cond_b
    invoke-virtual {v0, v1, v4, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameInternal(IZ[Ljava/lang/Object;)V

    :goto_8
    if-eqz v6, :cond_c

    :goto_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_c

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_c
    return-void
.end method

.method public varargs postNotificationNameInternal(IZ[Ljava/lang/Object;)V
    .locals 4

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "postNotificationName allowed only from MAIN thread"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lorg/telegram/messenger/NotificationCenter$DelayedPost;

    invoke-direct {p2, p1, p3, v0}, Lorg/telegram/messenger/NotificationCenter$DelayedPost;-><init>(I[Ljava/lang/Object;Lorg/telegram/messenger/NotificationCenter$1;)V

    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_4

    const/4 p2, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/NotificationCenter$PostponeNotificationCallback;

    iget v3, p0, Lorg/telegram/messenger/NotificationCenter;->currentAccount:I

    invoke-interface {v2, p1, v3, p3}, Lorg/telegram/messenger/NotificationCenter$PostponeNotificationCallback;->needPostpone(II[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/NotificationCenter$DelayedPost;

    invoke-direct {v1, p1, p3, v0}, Lorg/telegram/messenger/NotificationCenter$DelayedPost;-><init>(I[Ljava/lang/Object;Lorg/telegram/messenger/NotificationCenter$1;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    iget p2, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    iget v3, p0, Lorg/telegram/messenger/NotificationCenter;->currentAccount:I

    invoke-interface {v2, p1, v3, p3}, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;->didReceivedNotification(II[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget p1, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    if-nez p1, :cond_b

    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    :goto_3
    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    invoke-virtual {p0, v2, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    :cond_8
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    :goto_5
    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_a

    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;

    invoke-virtual {p0, v2, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->addAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    :cond_b
    return-void
.end method

.method public varargs postNotificationNameOnUIThread(I[Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/NotificationCenter;I[Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeDelayed(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V
    .locals 2

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "removeObserver allowed only from MAIN thread"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/NotificationCenter;->broadcasting:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/NotificationCenter;->removeAfterBroadcast:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->observers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public removePostponeNotificationsCallback(Lorg/telegram/messenger/NotificationCenter$PostponeNotificationCallback;)V
    .locals 2

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "removePostponeNotificationsCallback allowed only from MAIN thread"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->postponeCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/NotificationCenter;->runDelayedNotifications()V

    :cond_2
    return-void
.end method

.method public runDelayedNotifications()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPostsTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPostsTmp:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPostsTmp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPostsTmp:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/NotificationCenter$DelayedPost;

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->access$100(Lorg/telegram/messenger/NotificationCenter$DelayedPost;)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter$DelayedPost;->access$200(Lorg/telegram/messenger/NotificationCenter$DelayedPost;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationNameInternal(IZ[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedPostsTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnablesTmp:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->delayedRunnablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method

.method public setAnimationInProgress(I[I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[IZ)I

    move-result p1

    return p1
.end method

.method public setAnimationInProgress(I[IZ)I
    .locals 5

    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->heavyOperationsCounter:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {p1, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    iget p1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressCount:I

    iget p1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressPointer:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressPointer:I

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/messenger/NotificationCenter;->heavyOperationsCounter:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p1, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;-><init>(Lorg/telegram/messenger/NotificationCenter$1;)V

    iput-object p2, p1, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;->allowedIds:[I

    iget-object p2, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    iget p3, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressPointer:I

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    new-instance p1, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/NotificationCenter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/NotificationCenter;)V

    iput-object p1, p0, Lorg/telegram/messenger/NotificationCenter;->checkForExpiredNotifications:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1399

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    iget p1, p0, Lorg/telegram/messenger/NotificationCenter;->animationInProgressPointer:I

    return p1
.end method

.method public updateAllowedNotifications(I[I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/NotificationCenter;->allowedNotifications:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;

    if-eqz p1, :cond_0

    iput-object p2, p1, Lorg/telegram/messenger/NotificationCenter$AllowedNotifications;->allowedIds:[I

    :cond_0
    return-void
.end method
