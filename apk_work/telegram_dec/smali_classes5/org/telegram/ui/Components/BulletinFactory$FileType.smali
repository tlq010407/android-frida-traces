.class public final enum Lorg/telegram/ui/Components/BulletinFactory$FileType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/BulletinFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/BulletinFactory$FileType;

.field public static final enum AUDIO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

.field public static final enum AUDIOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

.field public static final enum GIF:Lorg/telegram/ui/Components/BulletinFactory$FileType;

.field public static final enum GIF_TO_DOWNLOADS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

.field public static final enum MEDIA:Lorg/telegram/ui/Components/BulletinFactory$FileType;

.field public static final enum PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

.field public static final enum PHOTOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

.field public static final enum PHOTO_TO_DOWNLOADS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

.field public static final enum UNKNOWN:Lorg/telegram/ui/Components/BulletinFactory$FileType;

.field public static final enum UNKNOWNS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

.field public static final enum VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

.field public static final enum VIDEOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

.field public static final enum VIDEO_TO_DOWNLOADS:Lorg/telegram/ui/Components/BulletinFactory$FileType;


# instance fields
.field private final icon:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

.field private final localeKey:Ljava/lang/String;

.field private final localeRes:I

.field private final plural:Z


# direct methods
.method private static synthetic $values()[Lorg/telegram/ui/Components/BulletinFactory$FileType;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lorg/telegram/ui/Components/BulletinFactory$FileType;

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->MEDIA:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO_TO_DOWNLOADS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO_TO_DOWNLOADS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->GIF:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->GIF_TO_DOWNLOADS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->AUDIO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->AUDIOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->UNKNOWN:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->UNKNOWNS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    new-instance v6, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    sget v4, Lorg/telegram/messenger/R$string;->PhotoSavedHint:I

    sget-object v13, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->SAVED_TO_GALLERY:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    const/4 v2, 0x0

    const-string v3, "PhotoSavedHint"

    const-string v1, "PHOTO"

    move-object v0, v6

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V

    sput-object v6, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/4 v1, 0x1

    const-string v2, "PhotosSavedHint"

    const-string v3, "PHOTOS"

    invoke-direct {v0, v3, v1, v2, v13}, Lorg/telegram/ui/Components/BulletinFactory$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    sget v11, Lorg/telegram/messenger/R$string;->VideoSavedHint:I

    const/4 v9, 0x2

    const-string v10, "VideoSavedHint"

    const-string v8, "VIDEO"

    move-object v7, v0

    move-object v12, v13

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Components/BulletinFactory$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/4 v1, 0x3

    const-string v2, "VideosSavedHint"

    const-string v3, "VIDEOS"

    invoke-direct {v0, v3, v1, v2, v13}, Lorg/telegram/ui/Components/BulletinFactory$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/4 v1, 0x4

    const-string v2, "MediaSavedHint"

    const-string v3, "MEDIA"

    invoke-direct {v0, v3, v1, v2, v13}, Lorg/telegram/ui/Components/BulletinFactory$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->MEDIA:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    sget v8, Lorg/telegram/messenger/R$string;->PhotoSavedToDownloadsHintLinked:I

    sget-object v10, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->SAVED_TO_DOWNLOADS:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    const/4 v6, 0x5

    const-string v7, "PhotoSavedToDownloadsHintLinked"

    const-string v5, "PHOTO_TO_DOWNLOADS"

    move-object v4, v0

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/BulletinFactory$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO_TO_DOWNLOADS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    sget v5, Lorg/telegram/messenger/R$string;->VideoSavedToDownloadsHintLinked:I

    const/4 v3, 0x6

    const-string v4, "VideoSavedToDownloadsHintLinked"

    const-string v2, "VIDEO_TO_DOWNLOADS"

    move-object v1, v0

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/BulletinFactory$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO_TO_DOWNLOADS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    sget v15, Lorg/telegram/messenger/R$string;->GifSavedHint:I

    sget-object v16, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->SAVED_TO_GIFS:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    const/4 v13, 0x7

    const-string v14, "GifSavedHint"

    const-string v12, "GIF"

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lorg/telegram/ui/Components/BulletinFactory$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->GIF:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    sget v5, Lorg/telegram/messenger/R$string;->GifSavedToDownloadsHintLinked:I

    const/16 v3, 0x8

    const-string v4, "GifSavedToDownloadsHintLinked"

    const-string v2, "GIF_TO_DOWNLOADS"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/BulletinFactory$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->GIF_TO_DOWNLOADS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    sget v15, Lorg/telegram/messenger/R$string;->AudioSavedHint:I

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->SAVED_TO_MUSIC:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    const/16 v13, 0x9

    const-string v14, "AudioSavedHint"

    const-string v12, "AUDIO"

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lorg/telegram/ui/Components/BulletinFactory$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->AUDIO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/16 v2, 0xa

    const-string v3, "AudiosSavedHint"

    const-string v4, "AUDIOS"

    invoke-direct {v0, v4, v2, v3, v1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->AUDIOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    sget v5, Lorg/telegram/messenger/R$string;->FileSavedHintLinked:I

    const/16 v3, 0xb

    const-string v4, "FileSavedHintLinked"

    const-string v2, "UNKNOWN"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/BulletinFactory$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->UNKNOWN:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    const/16 v1, 0xc

    const-string v2, "FilesSavedHintLinked"

    const-string v3, "UNKNOWNS"

    invoke-direct {v0, v3, v1, v2, v10}, Lorg/telegram/ui/Components/BulletinFactory$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->UNKNOWNS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->$values()[Lorg/telegram/ui/Components/BulletinFactory$FileType;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->$VALUES:[Lorg/telegram/ui/Components/BulletinFactory$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->localeKey:Ljava/lang/String;

    iput p4, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->localeRes:I

    iput-object p5, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->icon:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->plural:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->localeKey:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->icon:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    const/4 p1, 0x0

    iput p1, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->localeRes:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->plural:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->icon:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/BulletinFactory$FileType;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getText(I)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->plural:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->localeKey:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->localeKey:Ljava/lang/String;

    iget v0, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->localeRes:I

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/BulletinFactory$FileType;
    .locals 1

    const-class v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/BulletinFactory$FileType;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/Components/BulletinFactory$FileType;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->$VALUES:[Lorg/telegram/ui/Components/BulletinFactory$FileType;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/BulletinFactory$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/BulletinFactory$FileType;

    return-object v0
.end method
