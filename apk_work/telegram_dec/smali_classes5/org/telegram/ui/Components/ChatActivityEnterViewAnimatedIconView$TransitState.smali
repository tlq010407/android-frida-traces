.class final enum Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TransitState"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

.field public static final enum GIF_TO_KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

.field public static final enum GIF_TO_SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

.field public static final enum KEYBOARD_TO_GIF:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

.field public static final enum KEYBOARD_TO_SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

.field public static final enum KEYBOARD_TO_STICKER:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

.field public static final enum SMILE_TO_GIF:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

.field public static final enum SMILE_TO_KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

.field public static final enum SMILE_TO_STICKER:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

.field public static final enum STICKER_TO_KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

.field public static final enum STICKER_TO_SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

.field public static final enum VIDEO_TO_VOICE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

.field public static final enum VOICE_TO_VIDEO:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;


# instance fields
.field final firstState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

.field final resource:I

.field final secondState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;


# direct methods
.method private static synthetic $values()[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->VOICE_TO_VIDEO:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->STICKER_TO_KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->SMILE_TO_KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->VIDEO_TO_VOICE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->KEYBOARD_TO_STICKER:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->KEYBOARD_TO_GIF:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->KEYBOARD_TO_SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->GIF_TO_KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->GIF_TO_SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->SMILE_TO_GIF:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->SMILE_TO_STICKER:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->STICKER_TO_SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    sget-object v7, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->VOICE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    sget-object v8, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->VIDEO:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    sget v5, Lorg/telegram/messenger/R$raw;->voice_to_video:I

    const-string v1, "VOICE_TO_VIDEO"

    const/4 v2, 0x0

    move-object v0, v6

    move-object v3, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;I)V

    sput-object v6, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->VOICE_TO_VIDEO:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    sget-object v15, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->STICKER:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    sget-object v16, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    sget v14, Lorg/telegram/messenger/R$raw;->sticker_to_keyboard:I

    const-string v10, "STICKER_TO_KEYBOARD"

    const/4 v11, 0x1

    move-object v9, v0

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-direct/range {v9 .. v14}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->STICKER_TO_KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    sget-object v9, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    sget v6, Lorg/telegram/messenger/R$raw;->smile_to_keyboard:I

    const-string v2, "SMILE_TO_KEYBOARD"

    const/4 v3, 0x2

    move-object v1, v0

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->SMILE_TO_KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    new-instance v6, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    sget v5, Lorg/telegram/messenger/R$raw;->video_to_voice:I

    const-string v1, "VIDEO_TO_VOICE"

    const/4 v2, 0x3

    move-object v0, v6

    move-object v3, v8

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;I)V

    sput-object v6, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->VIDEO_TO_VOICE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    sget v6, Lorg/telegram/messenger/R$raw;->keyboard_to_sticker:I

    const-string v2, "KEYBOARD_TO_STICKER"

    const/4 v3, 0x4

    move-object v1, v0

    move-object/from16 v4, v16

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->KEYBOARD_TO_STICKER:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    sget-object v7, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;->GIF:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    sget v6, Lorg/telegram/messenger/R$raw;->keyboard_to_gif:I

    const-string v2, "KEYBOARD_TO_GIF"

    const/4 v3, 0x5

    move-object v1, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->KEYBOARD_TO_GIF:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    sget v6, Lorg/telegram/messenger/R$raw;->keyboard_to_smile:I

    const-string v2, "KEYBOARD_TO_SMILE"

    const/4 v3, 0x6

    move-object v1, v0

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->KEYBOARD_TO_SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    sget v6, Lorg/telegram/messenger/R$raw;->gif_to_keyboard:I

    const-string v2, "GIF_TO_KEYBOARD"

    const/4 v3, 0x7

    move-object v1, v0

    move-object v4, v7

    move-object/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->GIF_TO_KEYBOARD:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    sget v6, Lorg/telegram/messenger/R$raw;->gif_to_smile:I

    const-string v2, "GIF_TO_SMILE"

    const/16 v3, 0x8

    move-object v1, v0

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->GIF_TO_SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    sget v6, Lorg/telegram/messenger/R$raw;->smile_to_gif:I

    const-string v2, "SMILE_TO_GIF"

    const/16 v3, 0x9

    move-object v1, v0

    move-object v4, v9

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->SMILE_TO_GIF:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    sget v6, Lorg/telegram/messenger/R$raw;->smile_to_sticker:I

    const-string v2, "SMILE_TO_STICKER"

    const/16 v3, 0xa

    move-object v1, v0

    move-object v5, v15

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->SMILE_TO_STICKER:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    sget v6, Lorg/telegram/messenger/R$raw;->sticker_to_smile:I

    const-string v2, "STICKER_TO_SMILE"

    const/16 v3, 0xb

    move-object v1, v0

    move-object v4, v15

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;-><init>(Ljava/lang/String;ILorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;I)V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->STICKER_TO_SMILE:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    invoke-static {}, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->$values()[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->$VALUES:[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->firstState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    iput-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->secondState:Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$State;

    iput p5, p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->resource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;
    .locals 1

    const-class v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->$VALUES:[Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/ChatActivityEnterViewAnimatedIconView$TransitState;

    return-object v0
.end method
