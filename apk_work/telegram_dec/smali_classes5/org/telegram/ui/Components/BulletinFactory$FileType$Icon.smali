.class final enum Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/BulletinFactory$FileType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Icon"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

.field public static final enum SAVED_TO_DOWNLOADS:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

.field public static final enum SAVED_TO_GALLERY:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

.field public static final enum SAVED_TO_GIFS:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

.field public static final enum SAVED_TO_MUSIC:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;


# instance fields
.field private final layers:[Ljava/lang/String;

.field private final paddingBottom:I

.field private final resId:I


# direct methods
.method private static synthetic $values()[Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->SAVED_TO_DOWNLOADS:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->SAVED_TO_GALLERY:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->SAVED_TO_MUSIC:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->SAVED_TO_GIFS:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    new-instance v6, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    sget v3, Lorg/telegram/messenger/R$raw;->ic_download:I

    const-string v7, "Box"

    const-string v8, "Arrow"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x2

    const-string v1, "SAVED_TO_DOWNLOADS"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v6, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->SAVED_TO_DOWNLOADS:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    sget v12, Lorg/telegram/messenger/R$raw;->ic_save_to_gallery:I

    const-string v1, "Arrow 2"

    const-string v2, "Splash"

    const-string v3, "Mask"

    filled-new-array {v7, v8, v3, v1, v2}, [Ljava/lang/String;

    move-result-object v14

    const/4 v11, 0x1

    const/4 v13, 0x0

    const-string v10, "SAVED_TO_GALLERY"

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->SAVED_TO_GALLERY:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    sget v4, Lorg/telegram/messenger/R$raw;->ic_save_to_music:I

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x2

    const/4 v5, 0x2

    const-string v2, "SAVED_TO_MUSIC"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->SAVED_TO_MUSIC:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    sget v10, Lorg/telegram/messenger/R$raw;->ic_save_to_gifs:I

    const-string v1, "gif"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x3

    const/4 v11, 0x0

    const-string v8, "SAVED_TO_GIFS"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;-><init>(Ljava/lang/String;III[Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->SAVED_TO_GIFS:Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->$values()[Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->$VALUES:[Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;III[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->resId:I

    iput p4, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->paddingBottom:I

    iput-object p5, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->layers:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->resId:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->layers:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)I
    .locals 0

    iget p0, p0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->paddingBottom:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;
    .locals 1

    const-class v0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;
    .locals 1

    sget-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->$VALUES:[Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    return-object v0
.end method
